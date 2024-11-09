local npcs = {} -- Table to store NPC data
local respawnTimes = {} -- Store respawn times for each NPC
local blips = {} -- Table to store blip data

-- Track the current state of the shop prompt
local currentShopPromptVisible = false
local currentShopPromptNpc = nil

-- Track the cooldown visibility for each NPC
local cooldownVisible = {}

-- Function to create a blip for the NPC
function createBlipForNPC(npc, index)
    local blip = AddBlipForEntity(npc)
    SetBlipSprite(blip, 110) -- Ammu-Nation blip sprite ID (change this as needed)
    SetBlipColour(blip, 1) -- Set blip color (1 for red, change as desired)
    SetBlipScale(blip, 0.7) -- Scale of the blip
    SetBlipAsShortRange(blip, true) -- Show blip only when close to the player
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Weapon Shop NPC") -- Blip label
    EndTextCommandSetBlipName(blip)

    blips[index] = blip -- Store the blip in the table
end

-- Function to remove the blip
function removeBlip(index)
    if blips[index] then
        RemoveBlip(blips[index])
        blips[index] = nil -- Clear the reference
    end
end

-- Function to spawn an NPC
function spawnNPC(index, coords)
    local model = GetHashKey(Config.NPCModel)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(1)
    end

    local npc = CreatePed(4, model, coords.x, coords.y, coords.z - 1, coords.h, false, true)
    GiveWeaponToPed(npc, GetHashKey("WEAPON_PUMPSHOTGUN"), 0, false, true) -- Give NPC a shotgun

    FreezeEntityPosition(npc, true) -- Freeze the NPC in place
    SetBlockingOfNonTemporaryEvents(npc, true)

    npcs[index] = { npc = npc, alive = true, coords = coords }
    cooldownVisible[index] = false -- Initialize cooldown visibility

    -- Create blip for the NPC
    createBlipForNPC(npc, index)
end

-- Spawn all NPCs from config initially
Citizen.CreateThread(function()
    for i, data in ipairs(Config.NPCs) do
        spawnNPC(i, data)
    end
end)

-- Main loop to handle NPC behavior
Citizen.CreateThread(function()
    while true do
        Wait(1000)

        local playerCoords = GetEntityCoords(PlayerPedId()) -- Get player coordinates
        for i, npcData in ipairs(npcs) do
            local npc = npcData.npc

            -- Check if the NPC is dead
            if npcData.alive and IsPedDeadOrDying(npc, true) then
                npcData.alive = false
                DeleteEntity(npc)

                if Config.EnableRobbery then
                    -- Trigger reward and dispatch events
                    TriggerServerEvent("npcRobbed", i)
                    TriggerServerEvent("911Dispatch", npcData.coords)
                end

                -- Set respawn time for the NPC
                respawnTimes[i] = GetGameTimer() + math.random(300000, 600000)

                -- Remove blip for dead NPC
                removeBlip(i)

                -- Calculate time remaining for cooldown
                local timeRemaining = math.max(0, respawnTimes[i] - GetGameTimer())
                print("NPC " .. i .. " killed. Respawn time: " .. respawnTimes[i] .. ", Time remaining: " .. timeRemaining) -- Debug print

                -- Show cooldown based on Config.NPCs[i] coordinates
                local configCoords = Config.NPCs[i] -- Access the coordinates from config
                local onScreenConfig, xConfig, yConfig = GetScreenCoordFromWorldCoord(configCoords.x, configCoords.y, configCoords.z + 1.0)

                if onScreenConfig and timeRemaining > 0 then
                    SendNUIMessage({
                        action = "showCooldown",
                        timeRemaining = timeRemaining,
                        x = xConfig * 1920, -- Send full screen coordinates
                        y = yConfig * 1080  -- Send full screen coordinates
                    })
                    cooldownVisible[i] = true -- Mark cooldown as visible
                    print("Showing cooldown for NPC " .. i .. " at (" .. xConfig * 1920 .. ", " .. yConfig * 1080 .. ")") -- Debug print
                end
            else
                -- Handle NPC respawn
                if not npcData.alive and GetGameTimer() >= respawnTimes[i] then
                    spawnNPC(i, npcData.coords)
                    npcData.alive = true

                    if cooldownVisible[i] then
                        SendNUIMessage({ action = "hideCooldown" }) -- Hide cooldown when respawned
                        cooldownVisible[i] = false -- Mark cooldown as not visible
                    end
                    print("NPC " .. i .. " has respawned.") -- Debug print
                end

                -- Hide cooldown if it was previously shown and the NPC is alive
                if cooldownVisible[i] then
                    SendNUIMessage({ action = "hideCooldown" }) -- Hide cooldown
                    cooldownVisible[i] = false -- Mark cooldown as not visible
                end
            end
        end
    end
end)

-- Handle player interactions with NPCs
Citizen.CreateThread(function()
    while true do
        Wait(0)

        local playerCoords = GetEntityCoords(PlayerPedId())
        local closestNpc = nil
        local closestDistance = math.huge

        for i, npcData in ipairs(npcs) do
            local npc = npcData.npc
            local coords = npcData.coords
            local distance = #(playerCoords - vector3(coords.x, coords.y, coords.z))

            if npcData.alive and distance < 10.0 then
                if distance < closestDistance then
                    closestDistance = distance
                    closestNpc = npcData
                end
            end
        end

        if closestNpc then
            local coords = closestNpc.coords
            local onScreen, x, y = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z + 1.0)

            -- Update the UI position above the NPC's head
            if closestDistance < 10.0 and onScreen then
                SendNUIMessage({
                    action = "updatePosition",
                    x = x * 1920,
                    y = y * 1080
                })

                -- Show "Press E to open the Weapon Shop" message
                if closestDistance < 2.0 and onScreen then
                    local npcCoords = closestNpc.coords
                    onScreen, x, y = GetScreenCoordFromWorldCoord(npcCoords.x, npcCoords.y, npcCoords.z + 1.0)
                    if onScreen then
                        if not currentShopPromptVisible or currentShopPromptNpc ~= closestNpc then
                            -- Update visibility state
                            currentShopPromptVisible = true
                            currentShopPromptNpc = closestNpc

                            SendNUIMessage({
                                action = "showShopPrompt",
                                message = "Press E to open the Weapon Shop",
                                x = x * 1920,
                                y = y * 1080
                            })
                            print("Showing shop prompt for NPC.") -- Debug print
                        end

                        -- Check if "E" is pressed while the prompt is visible
                        if IsControlJustPressed(1, 51) then -- E key pressed
                            print("E key pressed near NPC.") -- Debug print
                            registerWeaponShop()
                        end
                    end
                else
                    -- Hide the shop prompt if the player moves away
                    if currentShopPromptVisible then
                        currentShopPromptVisible = false
                        currentShopPromptNpc = nil
                        SendNUIMessage({
                            action = "hideShopPrompt"
                        })
                        print("Hiding shop prompt.") -- Debug print
                    end
                end
            end

            -- NPC fights back if player aims at them
            if Config.EnableRobbery and IsPlayerFreeAimingAtEntity(PlayerId(), closestNpc.npc) then
                TaskCombatPed(closestNpc.npc, PlayerPedId(), 0, 16) -- NPC fights back
                print("NPC is fighting back!") -- Debug print
            end
            
            -- Allow the player to kill the NPC
            if Config.EnableRobbery and IsControlJustPressed(1, 24) then -- Change this to your desired key for killing the NPC (24 is for "R")
                if closestDistance < 2.0 then -- Check if the player is close enough
                    -- Kill the NPC
                    SetEntityHealth(closestNpc.npc, 0) -- Set NPC health to 0 to kill
                    print("Killed NPC " .. i) -- Debug print
                end
            end
        else
            -- No NPC nearby, hide the shop prompt if it's visible
            if currentShopPromptVisible then
                currentShopPromptVisible = false
                currentShopPromptNpc = nil
                SendNUIMessage({
                    action = "hideShopPrompt"
                })
                print("Hiding shop prompt, no NPC nearby.") -- Debug print
            end
        end
    end
end)
