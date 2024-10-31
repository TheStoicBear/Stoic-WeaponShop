-- Complete ammo data structure for FiveM GTA V

--- Represents the ammo types available in the game.
-- Each ammo type contains a name, price, and hash identifier.
-- @type AmmoType
-- @field name string The name of the ammo type.
-- @field price number The price of the ammo type.
-- @field hash string The unique identifier for the ammo type.
ammoTypes = {
    { name = "9mm Ammo", price = 50, hash = "ammo_9mm" },                -- Pistol ammo
    { name = "Shotgun Shells", price = 75, hash = "ammo_shotgun" },      -- Shotgun ammo
    { name = "Rifle Ammo", price = 100, hash = "ammo_rifle" },          -- Assault rifle ammo
    { name = "Heavy Sniper Ammo", price = 150, hash = "ammo_heavy_sniper" }, -- Heavy sniper ammo
    { name = "SMG Ammo", price = 60, hash = "ammo_smg" },               -- Submachine gun ammo
    { name = "Assault Rifle Ammo", price = 100, hash = "ammo_ar" },     -- Assault rifle ammo (different category)
    { name = "Pump Shotgun Ammo", price = 80, hash = "ammo_pump_shotgun" }, -- Pump shotgun ammo
    { name = "Special Carbine Ammo", price = 100, hash = "ammo_special_carbine" }, -- Special carbine ammo
    { name = "Compact Rifle Ammo", price = 100, hash = "ammo_compact_rifle" }, -- Compact rifle ammo
    { name = "Machine Pistol Ammo", price = 50, hash = "ammo_machine_pistol" }, -- Machine pistol ammo
    { name = "Marksman Rifle Ammo", price = 120, hash = "ammo_marksman_rifle" }, -- Marksman rifle ammo
    { name = "Grenade Launcher Ammo", price = 200, hash = "ammo_grenade_launcher" }, -- Grenade launcher ammo
    { name = "Minigun Ammo", price = 300, hash = "ammo_minigun" },      -- Minigun ammo
    { name = "Machete Ammo", price = 0, hash = "ammo_machete" },        -- Not typically sold, included for completeness
    { name = "Railgun Ammo", price = 300, hash = "ammo_railgun" },      -- Railgun ammo
    { name = "Firework Launcher Ammo", price = 150, hash = "ammo_firework_launcher" }, -- Firework launcher ammo
}

--- Represents a category of weapons in the game.
-- Each category contains a name and a list of weapons.
-- @type WeaponCategory
-- @field categoryName string The name of the weapon category.
-- @field weapons AmmoType[] The list of weapons in this category.
weaponCategories = {
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
            {name = "Revolver Double-Action Redtail", hash = "WEAPON_REVOLVER_DOUBLEACTION_REDTAIL", price = 900},
            {name = "Assault Shotgun", hash = "WEAPON_ASSAULTSHOTGUN", price = 1200},
            {name = "Bullpup Shotgun", hash = "WEAPON_BULLPUPSHOTGUN", price = 1100},
            {name = "Double Barrel Shotgun", hash = "WEAPON_DBSHOTGUN", price = 1000},
            {name = "Heavy Shotgun", hash = "WEAPON_HEAVYSHOTGUN", price = 1300},
            {name = "Musket", hash = "WEAPON_MUSKET", price = 1400},
            {name = "Sawed-Off Shotgun", hash = "WEAPON_SAWNOFFSHOTGUN", price = 1000},
            {name = "Pump Shotgun", hash = "WEAPON_PUMPSHOTGUN", price = 1100},
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
    }
    
}

-- Define weapon components
-- Define weapon components
weaponComponents = {
    {
        weapon = "Pistol",
        components = {
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 100},
            {name = "Flashlight", hash = "COMPONENT_AT_PI_FLSH", price = 50},
            {name = "Extended Clip", hash = "COMPONENT_PISTOL_CLIP_02", price = 75}
        }
    },
    {
        weapon = "Combat Pistol",
        components = {
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 100},
            {name = "Flashlight", hash = "COMPONENT_AT_PI_FLSH", price = 50},
            {name = "Extended Clip", hash = "COMPONENT_COMBATPISTOL_CLIP_02", price = 75}
        }
    },
    {
        weapon = "AP Pistol",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_APPISTOL_CLIP_02", price = 80},
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 110}
        }
    },
    {
        weapon = "Heavy Pistol",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_HEAVYPISTOL_CLIP_02", price = 90},
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 120},
            {name = "Flashlight", hash = "COMPONENT_AT_PI_FLSH", price = 60}
        }
    },
    {
        weapon = "Carbine Rifle",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_CARBINERIFLE_CLIP_02", price = 100},
            {name = "Scope", hash = "COMPONENT_AT_SCOPE_MEDIUM", price = 150},
            {name = "Grip", hash = "COMPONENT_AT_AR_AFGRIP", price = 70},
            {name = "Flashlight", hash = "COMPONENT_AT_AR_FLSH", price = 60},
            {name = "Suppressor", hash = "COMPONENT_AT_AR_SUPP", price = 150}
        }
    },
    {
        weapon = "Assault Rifle",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_ASSAULTRIFLE_CLIP_02", price = 90},
            {name = "Scope", hash = "COMPONENT_AT_SCOPE_MACRO", price = 140},
            {name = "Grip", hash = "COMPONENT_AT_AR_AFGRIP", price = 60},
            {name = "Flashlight", hash = "COMPONENT_AT_AR_FLSH", price = 50},
            {name = "Suppressor", hash = "COMPONENT_AT_AR_SUPP_02", price = 120}
        }
    },
    {
        weapon = "Bullpup Rifle",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_BULLPUPRIFLE_CLIP_02", price = 110},
            {name = "Scope", hash = "COMPONENT_AT_SCOPE_SMALL", price = 130},
            {name = "Grip", hash = "COMPONENT_AT_AR_AFGRIP", price = 75},
            {name = "Suppressor", hash = "COMPONENT_AT_AR_SUPP", price = 140},
            {name = "Flashlight", hash = "COMPONENT_AT_AR_FLSH", price = 60}
        }
    },
    {
        weapon = "SMG",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_SMG_CLIP_02", price = 80},
            {name = "Scope", hash = "COMPONENT_AT_SCOPE_MACRO_02", price = 125},
            {name = "Flashlight", hash = "COMPONENT_AT_AR_FLSH", price = 50},
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 110}
        }
    },
    {
        weapon = "Pump Shotgun",
        components = {
            {name = "Grip", hash = "COMPONENT_AT_AR_AFGRIP", price = 70},
            {name = "Flashlight", hash = "COMPONENT_AT_AR_FLSH", price = 50},
            {name = "Suppressor", hash = "COMPONENT_AT_SR_SUPP", price = 130}
        }
    },
    {
        weapon = "Heavy Sniper",
        components = {
            {name = "Advanced Scope", hash = "COMPONENT_AT_SCOPE_LARGE", price = 200},
            {name = "Suppressor", hash = "COMPONENT_AT_AR_SUPP_02", price = 180}
        }
    },
    {
        weapon = "Micro SMG",
        components = {
            {name = "Extended Clip", hash = "COMPONENT_MICROSMG_CLIP_02", price = 85},
            {name = "Scope", hash = "COMPONENT_AT_SCOPE_MACRO", price = 130},
            {name = "Suppressor", hash = "COMPONENT_AT_PI_SUPP", price = 115}
        }
    }
}

--- Function to get all weapon categories and their corresponding weapons.
-- @return table A table containing all weapon categories.
function getWeaponCategories()
    return weaponCategories
end

--- Function to get all ammo types.
-- @return table A table containing all ammo types.
function getAmmoTypes()
    return ammoTypes
end