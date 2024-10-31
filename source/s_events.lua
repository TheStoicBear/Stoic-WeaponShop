RegisterNetEvent('buyWeapon')
AddEventHandler('buyWeapon', function(weaponHash, price)
    local player = NDCore.getPlayer(source) -- Assuming you have a way to fetch the player from NDCore

    -- Deduct money from the player's account
    local success = player.deductMoney("bank", price, "Weapon purchase: "..weaponHash)
    
    if success then
        -- Notify the player of successful purchase
        TriggerClientEvent('weaponShop:purchaseSuccess', source, weaponHash, price)
    else
        -- Purchase failed, notify the player
        TriggerClientEvent('weaponShop:purchaseFailed', source, "Insufficient funds")
    end
end)
-- Event to handle component purchase
RegisterNetEvent('buyComponent')
AddEventHandler('buyComponent', function(componentHash, price)
    local player = NDCore.getPlayer(source)

    local success = player.deductMoney("bank", price, "Component purchase: "..componentHash)
    
    if success then
        TriggerClientEvent('weaponShop:purchaseComponentSuccess', source, componentHash, price)
    else
        TriggerClientEvent('weaponShop:purchaseFailed', source, "Insufficient funds")
    end
end)


RegisterServerEvent("npcRobbed")
AddEventHandler("npcRobbed", function()
    local playerId = source
    local rewardAmount = math.random(Config.RewardMin, Config.RewardMax) -- Random reward between min and max
    local rewardGiven = false

    -- Check for active resources and reward the player accordingly
    if GetResourceState("es_extended") == "started" then
        -- ESX framework
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            xPlayer.addMoney(rewardAmount)
            rewardGiven = true
        end
    elseif GetResourceState("qb-core") == "started" then
        -- QBCore framework
        local player = QBCore.Functions.GetPlayer(playerId)
        if player then
            player.Functions.AddMoney("cash", rewardAmount, "NPC robbery reward")
            rewardGiven = true
        end
    elseif GetResourceState("nd-core") == "started" then
        -- NDCore framework
        local player = NDCore.getPlayer(playerId)
        if player then
            local success = player.addMoney("cash", rewardAmount, "NPC robbery reward")
            if success then
                rewardGiven = true
            end
        end
    elseif GetResourceState("ox_inventory") == "started" then
        -- ox_inventory - Adds "cash" item as a reward
        local success, response = exports.ox_inventory:AddItem(playerId, "cash", rewardAmount)
        if success then
            rewardGiven = true
        else
            print("Failed to give reward: " .. (response or "unknown error"))
        end
    end

    -- Notify player if the reward was successfully given
    if rewardGiven then
        TriggerClientEvent("chat:addMessage", playerId, {
            args = {"[NPC]", "You have received $" .. rewardAmount .. " for robbing the NPC!"}
        })
    else
        print("No compatible resource found or reward could not be given.")
        TriggerClientEvent("chat:addMessage", playerId, {
            args = {"[NPC]", "Reward system unavailable or reward failed."}
        })
    end
end)

-- Handle 911 Dispatch call
RegisterServerEvent("911Dispatch")
AddEventHandler("911Dispatch", function(npcCoords)
    local message = "911 Call: Suspicious activity reported at coordinates: " .. npcCoords.x .. ", " .. npcCoords.y
    -- Send the dispatch message to all players (or modify to send only to police roles if needed)
    TriggerClientEvent("chat:addMessage", -1, {args = {"[DISPATCH]", message}})
end)
