local QBCore = exports['qb-core']:GetCoreObject()
-- Target Stuff
exports["qb-target"]:AddTargetModel(`prop_coffee_mac_02`, {
    options = {
        {
            type = "client",
            event = "wolfy-brews:makecoffee",
            icon = "fas fa-beer-mug-empty",
            label = "Make Coffee",
        },
    },
    distance = 1.5
})

exports["qb-target"]:AddTargetModel(`prop_kettle_01`, {
    options = {
        {
            type = "client",
            event = "wolfy-brews:maketea",
            icon = "fas fa-beer-mug-empty",
            label = "Make Tea",
        },
    },
    distance = 1.5
})

-- Events
RegisterNetEvent('wolfy-brews:makecoffee', function()
	if not coffee then
		if not MakingCoffee then
			coffee = true
			QBCore.Functions.Progressbar("coffee", "Preparing Coffee Machine...", 5000, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() 
				QBCore.Functions.Notify("Brewing Coffee", "primary")
				Wait(5000)
				MakingCoffee = true
				coffee = false
				QBCore.Functions.Notify("Your coffee is ready", "success")
				TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'coffee', 0.4)
			end, function() 
				coffee = false
			end)
		else
			MakingCoffee = false
			QBCore.Functions.Notify("You got a cup of coffee!")
            TriggerServerEvent('wolfy-brews:additem', Config.CoffeeItem, 1)
		end
	else
		QBCore.Functions.Notify("You are already making a coffee", "error")
	end
end)

RegisterNetEvent('wolfy-brews:maketea', function()
	if not tea then
		if not MakingTea then
			tea = true
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'tea', 0.4)
			QBCore.Functions.Progressbar("tea", "Boiling the kettle...", 15000, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() 
				QBCore.Functions.Notify("Letting tea bag brew", "primary")
				Wait(5000)
				MakingTea = true
				tea = false
				QBCore.Functions.Notify("Your cup of Tea is ready", "success")
			end, function() 
				tea = false
			end)
		else
			MakingTea = false
			QBCore.Functions.Notify("You got a cup of tea!")
            TriggerServerEvent('wolfy-brews:additem', Config.TeaItem, 1)
		end
	else
		QBCore.Functions.Notify("You are already making a cup of tea", "error")
	end
end)
