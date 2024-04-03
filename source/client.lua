

-- Define your weapon categories and weapons with prices
local weaponCategories = {
    {
        categoryName = "Shotguns",
        weapons = {
            {name = "Assault Shotgun", hash = "WEAPON_ASSAULTSHOTGUN", price = 1200},
            {name = "Bullpup Shotgun", hash = "WEAPON_BULLPUPSHOTGUN", price = 1100},
            {name = "Double Barrel Shotgun", hash = "WEAPON_DBSHOTGUN", price = 1000},
            {name = "Heavy Shotgun", hash = "WEAPON_HEAVYSHOTGUN", price = 1300},
            {name = "Musket", hash = "WEAPON_MUSKET", price = 1400},
            {name = "Sawed-Off Shotgun", hash = "WEAPON_SAWNOFFSHOTGUN", price = 1000},
            {name = "Pump Shotgun", hash = "WEAPON_PUMPSHOTGUN", price = 1100}
        }
    },
    {
        categoryName = "Melee",
        weapons = {
            {name = "Baseball Bat", hash = "WEAPON_BAT", price = 200},
            {name = "Crowbar", hash = "WEAPON_CROWBAR", price = 150},
            {name = "Bottle", hash = "WEAPON_BOTTLE", price = 100},
            {name = "Dagger", hash = "WEAPON_DAGGER", price = 250},
            {name = "Golf Club", hash = "WEAPON_GOLFCLUB", price = 180},
            {name = "Hammer", hash = "WEAPON_HAMMER", price = 170},
            {name = "Hatchet", hash = "WEAPON_HATCHET", price = 220},
            {name = "Knuckle Duster", hash = "WEAPON_KNUCKLE", price = 190},
            {name = "Knife", hash = "WEAPON_KNIFE", price = 160},
            {name = "Machete", hash = "WEAPON_MACHETE", price = 240},
            {name = "Switchblade", hash = "WEAPON_SWITCHBLADE", price = 210},
            {name = "Nightstick", hash = "WEAPON_NIGHTSTICK", price = 230},
            {name = "Pool Cue", hash = "WEAPON_POOLCUE", price = 200},
            {name = "Wrench", hash = "WEAPON_WRENCH", price = 220},
            {name = "Flashlight", hash = "WEAPON_FLASHLIGHT", price = 150},
            {name = "Fire Extinguisher", hash = "WEAPON_FIREEXTINGUISHER", price = 250},
            {name = "Battle Axe", hash = "WEAPON_BATTLEAXE", price = 280},
            {name = "Pool Cue", hash = "WEAPON_POOLCUE", price = 200},
            {name = "Stone Hatchet", hash = "WEAPON_STONE_HATCHET", price = 300}
        }
    },
    {
        categoryName = "Pistols",
        weapons = {
            {name = "Pistol", hash = "WEAPON_PISTOL", price = 300},
            {name = "Combat Pistol", hash = "WEAPON_COMBATPISTOL", price = 350},
            {name = "AP Pistol", hash = "WEAPON_APPISTOL", price = 400},
            {name = "Pistol .50", hash = "WEAPON_PISTOL50", price = 450},
            {name = "SNS Pistol", hash = "WEAPON_SNSPISTOL", price = 400},
            {name = "Heavy Pistol", hash = "WEAPON_HEAVYPISTOL", price = 500},
            {name = "Vintage Pistol", hash = "WEAPON_VINTAGEPISTOL", price = 550},
            {name = "Marksman Pistol", hash = "WEAPON_MARKSMANPISTOL", price = 600},
            {name = "Revolver", hash = "WEAPON_REVOLVER", price = 600},
            {name = "Double-Action Revolver", hash = "WEAPON_DOUBLEACTION", price = 650},
            {name = "Up-n-Atomizer", hash = "WEAPON_RAYPISTOL", price = 700},
            {name = "Stun Gun", hash = "WEAPON_STUNGUN", price = 450},
            {name = "Flare Gun", hash = "WEAPON_FLAREGUN", price = 500},
            {name = "Combat PDW", hash = "WEAPON_COMBATPDW", price = 650},
            {name = "Machine Pistol", hash = "WEAPON_MACHINEPISTOL", price = 600},
            {name = "Heavy Revolver", hash = "WEAPON_REVOLVER_MK2", price = 700},
            {name = "SNS Pistol Mk II", hash = "WEAPON_SNSPISTOL_MK2", price = 700},
            {name = "Pistol Mk II", hash = "WEAPON_PISTOL_MK2", price = 750},
            {name = "Ceramic Pistol", hash = "WEAPON_CERAMICPISTOL", price = 650},
            {name = "Navy Revolver", hash = "WEAPON_NAVYREVOLVER", price = 800},
            {name = "Veteran Pistol", hash = "WEAPON_VETERANPISTOL", price = 750},
            {name = "Zenith Pistol", hash = "WEAPON_ZENITHPISTOL", price = 750},
            {name = "Talon", hash = "WEAPON_TALON", price = 800},
            {name = "Grotti Pistol", hash = "WEAPON_GROTTIPISTOL", price = 700},
            {name = "M1911", hash = "WEAPON_M1911", price = 750},
            {name = "M1899", hash = "WEAPON_M1899", price = 800},
            {name = "M1917", hash = "WEAPON_M1917", price = 800},
            {name = "Mauser Pistol", hash = "WEAPON_MAUSERPISTOL", price = 850},
            {name = "Revolver Schofield", hash = "WEAPON_REVOLVER_SCHOFIELD", price = 750},
            {name = "Pistol Mauser", hash = "WEAPON_PISTOL_MAUSER", price = 850},
            {name = "Revolver Cattleman", hash = "WEAPON_REVOLVER_CATTLEMAN", price = 800},
            {name = "Revolver Double-Action Gambler", hash = "WEAPON_REVOLVER_DOUBLEACTION_GAMBLER", price = 850},
            {name = "Revolver Double-Action Exotic", hash = "WEAPON_REVOLVER_DOUBLEACTION_EXOTIC", price = 900},
            {name = "Revolver Double-Action Racer", hash = "WEAPON_REVOLVER_DOUBLEACTION_RACER", price = 900},
            {name = "Revolver Double-Action Redtail", hash = "WEAPON_REVOLVER_DOUBLEACTION_REDTAIL", price = 900}
        }
    },
    {
        categoryName = "Rifles",
        weapons = {
            {name = "Assault Rifle", hash = "WEAPON_ASSAULTRIFLE", price = 800},
            {name = "Carbine Rifle", hash = "WEAPON_CARBINERIFLE", price = 850},
            {name = "Advanced Rifle", hash = "WEAPON_ADVANCEDRIFLE", price = 900},
            {name = "Special Carbine", hash = "WEAPON_SPECIALCARBINE", price = 950},
            {name = "Bullpup Rifle", hash = "WEAPON_BULLPUPRIFLE", price = 1000},
            {name = "Compact Rifle", hash = "WEAPON_COMPACTRIFLE", price = 1000},
            {name = "Marksman Rifle", hash = "WEAPON_MARKSMANRIFLE", price = 1200},
            {name = "Sniper Rifle", hash = "WEAPON_SNIPERRIFLE", price = 1500},
            {name = "Heavy Sniper", hash = "WEAPON_HEAVYSNIPER", price = 1800},
            {name = "Gusenberg Sweeper", hash = "WEAPON_GUSENBERG", price = 2200},
            {name = "MG", hash = "WEAPON_MG", price = 2000},
            {name = "Combat MG", hash = "WEAPON_COMBATMG", price = 2400},
            {name = "Minigun", hash = "WEAPON_MINIGUN", price = 5000},
            {name = "Firework Launcher", hash = "WEAPON_FIREWORK", price = 2800},
        }
    },
    -- All weapons from GTA 5 with prices
    {
        categoryName = "All Weapons",
        weapons = {
            -- Add all weapons with prices here
        }
    }
}

-- Function to show purchase success message
RegisterNetEvent('weaponShop:purchaseSuccess')
AddEventHandler('weaponShop:purchaseSuccess', function(weaponHash, price)
    -- Replace this with your message display logic
    lib.notify({
        title = 'Purchase Successful',
        description = 'You have purchased the weapon ' .. weaponHash .. ' for $' .. price .. ' successfully.',
        type = 'success'
    })
    -- Purchase successful, give the weapon to the player
    GiveWeaponToPed(PlayerPedId(), weaponHash, 50, false, true) -- 50 ammo count for example
end)

-- Function to show purchase failure message
RegisterNetEvent('weaponShop:purchaseFailed')
AddEventHandler('weaponShop:purchaseFailed', function(reason)
    -- Replace this with your message display logic
    lib.notify({
        title = 'Purchase Failed',
        description = 'Reason: ' .. reason,
        type = 'error'
    })
end)

-- Function to register weapon shop context menu
local function registerWeaponShop()
    local shopMenu = {
        id = 'weapon_shop',
        title = 'Weapon Shop',
        options = {}
    }

    -- Add categories to the shop menu
    for _, category in ipairs(weaponCategories) do
        local categoryButton = {
            title = category.categoryName,
            menu = category.categoryName:lower() .. '_weapons',
            icon = 'gun', -- You can change the icon as needed
            arrow = true
        }
        table.insert(shopMenu.options, categoryButton)

        -- Register context menu for each category
        local categoryMenu = {
            id = category.categoryName:lower() .. '_weapons',
            title = category.categoryName,
            menu = 'weapon_shop',
            options = {}
        }

        -- Add weapons to the category menu
        for _, weapon in ipairs(category.weapons) do
            local weaponButton = {
                title = weapon.name .. ' ($' .. weapon.price .. ')', -- Display weapon name and cost
                onSelect = function()
                    -- Trigger the buyWeapon event with weapon hash and price
                    TriggerServerEvent('buyWeapon', weapon.hash, weapon.price)
                end
            }
            table.insert(categoryMenu.options, weaponButton)
        end

        -- Register the category menu
        lib.registerContext(categoryMenu)
    end

    -- Register the shop menu
    lib.registerContext(shopMenu)
end

-- Register the weapon shop
registerWeaponShop()

-- -- Command to open the weapon shop menu
-- RegisterCommand('weaponshop', function()
--     lib.showContext('weapon_shop')
-- end)