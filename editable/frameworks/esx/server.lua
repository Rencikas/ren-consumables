if Config.framework ~= 'esx' then 
    return
end

Core = exports['es_extended']:getSharedObject()

function GetPlayer(source)
    return Core.GetPlayerFromId(source)
end

function RegisterCallBack(name, cb, ...)
    Core.RegisterServerCallback(name, cb, ...)  
end

function RegisterUsableItem(item, ...)
    Core.RegisterUsableItem(item, ...)
end

function RemoveItem(player, item, amount) 
    player.removeInventoryItem(item, amount)
end

function RegainStatus(player, type, regain)
    TriggerClientEvent('esx_status:add', player.source, type, regain * 10000)
end