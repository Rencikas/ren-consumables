if Config.framework ~= 'qb' then 
    return
end

Core = exports["qb-core"]:GetCoreObject()

function TriggerCallBack(name, cb, ...)
    Core.Functions.TriggerCallback(name, cb, ...)
end

function ProgressBar(data)
    Core.Functions.Progressbar("consuming", data.label, data.time, data.useWhileDead, data.canCancel, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = data.anim.dict,
        anim = data.anim.clip,
        flags = data.anim.flags,
        task = data.anim.scenario,
    }, {
        model = data.prop.model,
        bone = data.prop.bone,
        coords = data.prop.pos,
        rotation = data.prop.rot,
    }, {}, function()
        return true
    end, function()
        return false
    end)
end