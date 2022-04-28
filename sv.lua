--Discord Rich
Citizen.CreateThread(function()
    while true do
        local playercount = GetNumPlayerIndices()
        TriggerClientEvent('mb-activity:playercount', -1, playercount)
        Citizen.Wait(30000)
    end
end)