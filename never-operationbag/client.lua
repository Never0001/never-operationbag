local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
	PlayerData.job = job
end)

PlayerData = QBCore.Functions.GetPlayerData()


RegisterNetEvent("never_operationbag:giveitem", function()
  if PlayerData.job.name =="police" then
  for k, v in pairs(Config.operationbag) do
    for i=1, #v.grade do
    if v.grade[i] == PlayerData.job.grade.level then
    TriggerServerEvent("never-operationbah:giveitem", v.item,v.count)
    end
  end
  end
end
end)