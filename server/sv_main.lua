local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent("wolfy-brews:additem", function(name, amount, slot, info)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.AddItem(name, amount, slot, info)
    end
end)