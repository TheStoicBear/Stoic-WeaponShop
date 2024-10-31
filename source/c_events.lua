-- Function to show purchase success message
RegisterNetEvent('weaponShop:purchaseSuccess')
AddEventHandler('weaponShop:purchaseSuccess', function(weaponHash, price)
    -- Notify the player of the successful purchase
    lib.notify({
        title = 'Purchase Successful',
        description = 'You have purchased the weapon ' .. weaponHash .. ' for $' .. price .. ' successfully.',
        type = 'success'
    })

    -- Give the weapon to the player with 50 ammo
    GiveWeaponToPed(PlayerPedId(), weaponHash, 50, false, true)

    -- Call the exported function to save the player's weapons
    exports.weaponsave:saveWeapons()
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

-- Client-side event to notify component purchase success
RegisterNetEvent('weaponShop:purchaseComponentSuccess')
AddEventHandler('weaponShop:purchaseComponentSuccess', function(componentHash, price)
    lib.notify({
        title = 'Component Purchase Successful',
        description = 'You have purchased the component ' .. componentHash .. ' for $' .. price .. ' successfully.',
        type = 'success'
    })
    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), componentHash)
end)