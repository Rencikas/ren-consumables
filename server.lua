for k,v in pairs(Config.consumables) do 
    RegisterUsableItem(k, function(source)
        TriggerClientEvent('ren-consumables:UseItem', source, k, v)
    end)
end

RegisterCallBack('ren-consumables:ConsumedItem', function(source, cb, item, data)
    local player = GetPlayer(source)

    if data.regain ~= nil then 
        RegainStatus(player, data.statusType, data.regain)
    end

    if data.remove ~= nil then 
        RemoveItem(player, item, data.remove.amount) 
    end

    cb(true)
end)