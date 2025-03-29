local taserShots = Config.BatteryLimit
local isOnCooldown = false


Citizen.CreateThread(funtion()
    while true do 
        Citizen.Wait(0)


        if IsPedArmed(PlayerPedId(), 4) then
            local weaponHash = GetSelectedPedWeapon(PlayerPedId())


            if weaponHash == GetHashKey("WEAPON_STUNGUN") then
                DisableControlAction(0, 25, true)
                DrawTxt("Taser Battery: " .. taserShots .. "/" .. Config.BatteryLimit, 0.85, 0.95)


                if IsPedShooting(PlayerPedId()) then
                    if isOnCooldown then
                        ShowNotifcation("⚡ Taser Is recharging...")
                        SetPedAmmo(PlayerPedId(), GetHashKey("WEAPON_STUNGUN"))
                    elseif taserShots <= 0 then
                        ShowNotifcation("🔋 Taser battery is dead!")
                        RemoveWeaponFromPed(PlayerPedId(), GetHashKey("WEAPON_STUNGUN"))
                    else
                        taserShots = taserShots - 1
                        StartCooldown()
                    end
                end
            end
        end
    end
end)


function StartCooldown()
    isOnCooldown = true
    Citizen.Wait(Config.TaserCooldown * 1000)
    isOnCooldown = false
end


function DrawTxt(text, x, y)
    SetTextFont(0)
    SetTextScale(0.4, 0.4)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end


function ShowNotifcation(msg)
    SetNotifcationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, false)
end