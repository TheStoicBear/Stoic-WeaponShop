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
