RegisterServerEvent("taser:log")
AddEventHandler("taser:log", function(playerName)
    if Config.EnableLogging then
        print("[TASER LOG]" .. playerName .. " used their taser.")
    end
end)