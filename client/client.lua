local weapons = Config.Weapons

local function applyRecoil(ped, weapon)
    local startTime = GetGameTimer()
    while (GetGameTimer() - startTime) / 1000 < weapons[weapon].recoil do
        if GetFollowPedCamViewMode() ~= 4 then
            SetGameplayCamRelativePitch(GetGameplayCamRelativePitch() + 0.1, 0.2)
        end
        Citizen.Wait(0)
    end
end

Citizen.CreateThread(function()
    local ped = PlayerPedId()
    while true do
        Citizen.Wait(0)
        ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)

        if IsPedShooting(ped) and weapons[weapon] then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', weapons[weapon].shake)
            if weapons[weapon].recoil ~= 0 and not IsPedDoingDriveby(ped) then
                applyRecoil(ped, weapon)
            end
        end

        if Config.DisableCrosshair and IsPedArmed(ped, 6) then
            HideHudComponentThisFrame(14)
        end
        if Config.DisableAmmoHUD then
            DisplayAmmoThisFrame(false)
        end
        if Config.DisableHealthRegeneration then
            SetPlayerHealthRechargeMultiplier(ped, 0.0)
        end
    end
end)

Citizen.CreateThread(function()
    local ped = PlayerPedId()

    if Config.DisableHeadshots then
        SetPedSuffersCriticalHits(ped, false)
    end

    if Config.RealisticFlashlight then
        SetFlashLightKeepOnWhileMoving(true)
    end
end)

Citizen.CreateThread(function()
    local ped = PlayerPedId()

    while Config.DisableAimPunching do
        if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
            Citizen.Wait(25)
        else
            Citizen.Wait(1000)
        end
    end
end)
