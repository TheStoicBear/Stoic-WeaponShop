-- Register the weapon shop with components and ammo
function registerWeaponShop()
    local shopMenu = {
        id = 'weapon_shop',
        title = 'Weapon Shop',
        options = {}
    }

    -- Register weapon categories
    for _, category in ipairs(weaponCategories) do
        local categoryButton = {
            title = category.categoryName,
            menu = category.categoryName:lower() .. '_weapons',
            icon = 'gun',
            arrow = true
        }
        table.insert(shopMenu.options, categoryButton)

        local categoryMenu = {
            id = category.categoryName:lower() .. '_weapons',
            title = category.categoryName,
            menu = 'weapon_shop',
            options = {}
        }

        for _, weapon in ipairs(category.weapons) do
            local weaponButton = {
                title = weapon.name .. ' ($' .. weapon.price .. ')',
                onSelect = function()
                    TriggerServerEvent('buyWeapon', weapon.hash, weapon.price)
                end
            }
            table.insert(categoryMenu.options, weaponButton)
        end

        lib.registerContext(categoryMenu)
    end

    -- Register components menu
    local componentMenu = {
        id = 'weapon_components',
        title = 'Weapon Components',
        menu = 'weapon_shop',
        options = {}
    }

    for _, weapon in ipairs(weaponComponents) do
        for _, component in ipairs(weapon.components) do
            local componentButton = {
                title = component.name .. ' for ' .. weapon.weapon .. ' ($' .. component.price .. ')',
                onSelect = function()
                    TriggerServerEvent('buyComponent', component.hash, component.price)
                end
            }
            table.insert(componentMenu.options, componentButton)
        end
    end

    table.insert(shopMenu.options, {title = "Weapon Components", menu = "weapon_components", icon = "cog", arrow = true})

    lib.registerContext(componentMenu)

    -- Register ammo menu
    local ammoMenu = {
        id = 'ammo_shop',
        title = 'Ammo Shop',
        menu = 'weapon_shop',
        options = {}
    }

    for _, ammo in ipairs(ammoTypes) do
        local ammoButton = {
            title = ammo.name .. ' ($' .. ammo.price .. ')',
            onSelect = function()
                TriggerServerEvent('buyAmmo', ammo.hash, ammo.price)
            end
        }
        table.insert(ammoMenu.options, ammoButton)
    end

    -- Add the ammo option to the main shop menu
    table.insert(shopMenu.options, {title = "Ammo", menu = "ammo_shop", icon = "bullet", arrow = true})
    
    lib.registerContext(ammoMenu)
    lib.registerContext(shopMenu)

    -- Show the main weapon shop menu
    lib.showContext('weapon_shop')
end