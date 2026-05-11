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
    -- AVAILABLE GROUPS: 
    -- GROUP_PISTOL, GROUP_SUBMACHINE, GROUP_RIFLE, GROUP_SHOTGUN, GROUP_SNIPER, GROUP_MG, GROUP_HEAVY
    ['GROUP_PISTOL'] = { recoil = 0.4, shake = 0.02, damage = 1.0 },
    ['GROUP_SUBMACHINE'] = { recoil = 0.5, shake = 0.04, damage = 0.8 },
    ['GROUP_RIFLE'] = { recoil = 0.7, shake = 0.05, damage = 1.0 },
    ['GROUP_SHOTGUN'] = { recoil = 1.2, shake = 0.12, damage = 1.0 },
    ['GROUP_SNIPER'] = { recoil = 1.5, shake = 0.20, damage = 1.5 },
    ['GROUP_MG'] = { recoil = 0.9, shake = 0.08, damage = 1.1 },
    ['GROUP_HEAVY'] = { recoil = 2.0, shake = 0.25, damage = 1.0 },

    -- SPECIFIC WEAPONS
    ['WEAPON_PISTOL'] = { recoil = 0.5, shake = 0.02, damage = 1.0 },
    ['WEAPON_COMBATPISTOL'] = { recoil = 0.6, shake = 1.5, damage = 1.1 },
    ['WEAPON_CARBINERIFLE'] = { recoil = 0.8, shake = 0.05, damage = 1.0 },
  }
}
