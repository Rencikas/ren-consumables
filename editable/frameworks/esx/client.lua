if Config.framework ~= 'esx' then 
    return
end

Core = exports['es_extended']:getSharedObject()

function TriggerCallBack(name, cb, ...)
    Core.TriggerServerCallback(name, cb, ...)
end

function ProgressBar(data)
    local result = lib.progressBar({
        duration = data.time,
        label = data.label,
        useWhileDead = data.useWhileDead,
        canCancel = data.canCancel,
        disable = {
            car = true,
        },
        anim = data.anim,
        prop = data.prop,
    })

    if result then     
        return true
    end

    return false
end