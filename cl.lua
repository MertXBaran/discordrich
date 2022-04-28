--Discordrich
local playercount = 0
Citizen.CreateThread(function()
    SetDiscordAppId(968572215555686460)
    SetDiscordRichPresenceAsset('med2usa')
    SetDiscordRichPresenceAssetText('Medusa Roleplay')
    SetRichPresence("Bağlanılıyor...")
    SetDiscordRichPresenceAction(0, "Discordumuza Katıl", "https://discord.gg/medusarp")
    SetDiscordRichPresenceAction(1, "Oyuna Bağlan", "fivem://connect/45.141.149.33:30120")
end)


RegisterNetEvent('mb-activity:playercount')
AddEventHandler('mb-activity:playercount', function(count)
    SetRichPresence("["..GetPlayerServerId(PlayerId()).."] "..GetPlayerName(PlayerId()))
    SetDiscordRichPresenceAction(1, "Oyuna Bağlan ["..count.."/256]", "fivem://connect/45.141.149.33:30120")
    playercount = count
end)