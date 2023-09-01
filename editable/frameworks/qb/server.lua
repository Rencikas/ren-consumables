if Config.framework ~= 'qb' then 
    return
end

Core = exports["qb-core"]:GetCoreObject()

function GetPlayer(source)
    return Core.Functions.GetPlayer(source)
end

function RegisterCallBack(name, cb, ...)
    Core.Functions.CreateCallback(name, cb, ...)
end

function RegisterUsableItem(item, ...)
    Core.Functions.CreateUseableItem(item, ...)
end

function RemoveItem(player, item, amount) 
    player.Functions.RemoveItem(item, amount)
end

function RegainStatus(player, type, regain)
    TriggerServerEvent("QBCore:Server:SetMetaData", type, player.PlayerData.metadata[type] + regain)
end