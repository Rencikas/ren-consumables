
local function UseItem(item, data)
    TriggerCallBack('ren-consumables:ConsumedItem', function(result)
        if not result then return end
        if data.onUse ~= nil then 
            data.onUse()
        end
    end, item, data)
end

RegisterNetEvent('ren-consumables:UseItem', function(item, data)     
    if ProgressBar(data.progressBar) then     
        UseItem(item, data)
    else 
        print('cancaled consuming')
    end
end)