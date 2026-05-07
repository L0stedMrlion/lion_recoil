return {
  -- Flashlights get a realistic flashlight when toggled not aim, the flashlight is still visible
  RealisticFlashlight = true,

  -- Simply disables one shot headshot kills
  DisableHeadshots = true,

  -- Disables punching with weapons when pressing "R"
  DisableAimPunching = true,

  -- Disables natural health regeneration, player needs to heal by using bandage etc.
  DisableHealthRegeneration = true,

  -- Disables combat roll, when pressing "backspace" while aiming with weapon
  DisableCombatRoll = false,

  RecoilSettings = {
    -- Recoil Settings:
    -- Weapon hashes (e.g. WEAPON_PISTOL) will always override group hashes (e.g. GROUP_PISTOL)
    -- Recoil: duration in seconds for the camera to rise
    -- Shake: intensity of the camera shake
    -- Damage: sets weapon damage
    ['GROUP_PISTOL'] = { recoil = 0.0, shake = 0.0, damage = 0.0 },
    ['GROUP_SUBMACHINE'] = { recoil = 0.0, shake = 0.06, damage = 0.6 },
    ['GROUP_RIFLE'] = { recoil = 0.0, shake = 0.07, damage = 0.7 },

    ['WEAPON_PISTOL'] = { recoil = 0.5, shake = 0.02, damage = 1.0 },
    ['WEAPON_COMBATPISTOL'] = { recoil = 0.6, shake = 1.5, damage = 1.1 },
    ['WEAPON_CARBINERIFLE'] = { recoil = 0.8, shake = 0.05, damage = 1.0 },

  }
}
