local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("operation_bag", function(source )
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("never_operationbag:giveitem")
        Player.Functions.RemoveItem('operation_bag')
end)


RegisterNetEvent('never-operationbah:giveitem')
AddEventHandler('never-operationbah:giveitem' ,function(item,count)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, count)
end)
