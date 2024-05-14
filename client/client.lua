local weapons = Config.Weapons

local function applyRecoil(ped, weapon)
  local tv = 0
  local startTime = GetGameTimer()
  while tv < weapons[weapon].recoil do
    Citizen.Wait(0)
    local p = GetGameplayCamRelativePitch()
    if GetFollowPedCamViewMode() ~= 4 then
      SetGameplayCamRelativePitch(p + 0.1, 0.2)
    end
    tv = (GetGameTimer() - startTime) / 1000
  end
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)

    if IsPedShooting(ped) then
      if weapons[weapon] then
        ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', weapons[weapon].shake)
        if weapons[weapon].recoil ~= 0 and not IsPedDoingDriveby(ped) then
          applyRecoil(ped, weapon)
        end
      end
    end

    if Config.DisableCrosshair and IsPedArmed(ped, 6) then
      HideHudComponentThisFrame(14)
    end
  end
end)
