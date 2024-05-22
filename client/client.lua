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
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
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
    end
end)

local ped = PlayerPedId()

Citizen.CreateThread(function()
  if Config.DisableHeadshots then
    SetPedSuffersCriticalHits(ped, false)
  end

  if Config.RealisticFlashlight then
    SetFlashLightKeepOnWhileMoving(true)
  end

  if Config.DisableAimPunching and IsPedArmed(ped, 4) then
      DisableControlAction(1, 140, true)
      DisableControlAction(1, 141, true)
      DisableControlAction(1, 142, true)
  end

  while Config.DisableCombatRoll do
      while not IsPedArmed(ped, 6) do
          Citizen.Wait(0)
      end

      if IsControlPressed(0, 25) then
          DisableControlAction(0, 22, true)
      end

      Citizen.Wait(0)
  end
end)
