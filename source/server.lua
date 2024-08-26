RegisterNetEvent('buyWeapon')
AddEventHandler('buyWeapon', function(weaponHash, price)
    local source = source
    local playerAccount = exports.money:getaccount(source) -- Fetch the player's account using the money export

    if playerAccount then
        local currentBank = playerAccount.bank

        -- Check if the player has enough money
        if currentBank >= price then
            -- Deduct money from the player's account
            local newBankBalance = currentBank - price
            local success = exports.money:updateaccount(source, { cash = playerAccount.amount, bank = newBankBalance })
            
            if success then
                -- Notify the player of successful purchase
                TriggerClientEvent('weaponShop:purchaseSuccess', source, weaponHash, price)
            else
                -- Error updating the account, notify the player
                TriggerClientEvent('weaponShop:purchaseFailed', source, "Error processing transaction")
            end
        else
            -- Insufficient funds, notify the player
            TriggerClientEvent('weaponShop:purchaseFailed', source, "Insufficient funds")
        end
    else
        -- Player account not found, notify the player
        TriggerClientEvent('weaponShop:purchaseFailed', source, "Account not found")
    end
end)
