Config = {--//Don't touch this line

    framework = 'esx',--//Supported framework name goes here, supported framework names: esx, qb

    consumables = {--//consumable items
        ['anchor'] = {
            statusType = 'hunger',
            progressBar = {
                time = 5000,
                label = 'Naudojama',
                canCancel = true,
                useWhileDead = false,               
            },
            remove = { 
                amount = 1 
            },
            regain = 20,--
            onUse = function()
                print('panaudojai bybi')
            end
        }

    }--//Don't touch this line

}--//Don't touch this line