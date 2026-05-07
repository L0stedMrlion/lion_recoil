local config = require 'config'

local RecoilSettings = {}
for name, data in pairs(config.RecoilSettings) do
    RecoilSettings[joaat(name)] = data
end

local isWeaponLoopRunning = false

local function applyRecoil(ped, weapon)
    local weaponData = RecoilSettings[weapon] or RecoilSettings[GetWeapontypeGroup(weapon)]
    if not weaponData then return end

    local recoilTime = GetGameTimer() + (weaponData.recoil * 1000)

    while GetGameTimer() < recoilTime do
        if GetFollowPedCamViewMode() ~= 4 then
            SetGameplayCamRelativePitch(
                GetGameplayCamRelativePitch() + 0.1,
                0.2
            )
        end
        Wait(0)
    end
end

local function startWeaponLoop()
    if isWeaponLoopRunning then return end
    isWeaponLoopRunning = true

    CreateThread(function()
        while cache.weapon do
            local ped = cache.ped
            local weapon = cache.weapon
            local weaponData = RecoilSettings[weapon] or RecoilSettings[GetWeapontypeGroup(weapon)]

            if weaponData then
                if config.DisableAimPunching then
                    DisableControlAction(1, 140, true)
                    DisableControlAction(1, 141, true)
                    DisableControlAction(1, 142, true)
                end

                if IsPedShooting(ped) then
                    ShakeGameplayCam(
                        'SMALL_EXPLOSION_SHAKE',
                        weaponData.shake
                    )

                    if weaponData.recoil ~= 0 and not IsPedDoingDriveby(ped) then
                        applyRecoil(ped, weapon)
                    end
                end
            end

            Wait(0)
        end

        isWeaponLoopRunning = false
    end)
end

-- Full credit to Randolio, implemented from qbox Discord from code-snippets
-- Message link: https://discord.com/channels/1012753553418354748/1277102648192929823/1277102648192929823
local function checkCombatRoll()
    CreateThread(function()
        while cache.weapon do
            SetPedResetFlag(cache.ped, 446, true)
            Wait(0)
        end
    end)
end

lib.onCache('weapon', function(weapon)
    if weapon then
        local weaponData = RecoilSettings[weapon] or RecoilSettings[GetWeapontypeGroup(weapon)]
        if weaponData and weaponData.damage then
            SetWeaponDamageModifier(weapon, weaponData.damage)
        end

        startWeaponLoop()
        if config.DisableCombatRoll then
            checkCombatRoll()
        end
    end
end)


CreateThread(function()
    if config.RealisticFlashlight then
        SetFlashLightKeepOnWhileMoving(true)
    end
end)

CreateThread(function()
    while config.DisableHeadshots do
        SetPedSuffersCriticalHits(cache.ped, false)
        Wait(5000)
    end
end)

CreateThread(function()
    if config.DisableHealthRegeneration then
        SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    end
end)
