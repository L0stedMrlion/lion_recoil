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

    -- [GROUP_PISTOL]
    ['GROUP_PISTOL'] = { recoil = 0.4, shake = 0.02, damage = 1.0 },
    ['WEAPON_PISTOL'] = { recoil = 0.5, shake = 0.02, damage = 1.0 },
    ['WEAPON_COMBATPISTOL'] = { recoil = 0.6, shake = 0.03, damage = 1.1 },
    ['WEAPON_APPISTOL'] = { recoil = 0.4, shake = 0.05, damage = 0.8 },
    ['WEAPON_PISTOL50'] = { recoil = 1.2, shake = 0.10, damage = 1.5 },
    ['WEAPON_REVOLVER'] = { recoil = 1.8, shake = 0.15, damage = 2.0 },
    ['WEAPON_SNSPISTOL'] = { recoil = 0.3, shake = 0.02, damage = 0.7 },
    ['WEAPON_HEAVYPISTOL'] = { recoil = 0.8, shake = 0.04, damage = 1.2 },
    ['WEAPON_VINTAGEPISTOL'] = { recoil = 0.5, shake = 0.03, damage = 0.9 },
    ['WEAPON_MARKSMANPISTOL'] = { recoil = 1.5, shake = 0.10, damage = 2.2 },

    -- [GROUP_SUBMACHINE]
    ['GROUP_SUBMACHINE'] = { recoil = 0.5, shake = 0.04, damage = 0.8 },
    ['WEAPON_MICROSMG'] = { recoil = 0.4, shake = 0.06, damage = 0.7 },
    ['WEAPON_SMG'] = { recoil = 0.5, shake = 0.05, damage = 0.8 },
    ['WEAPON_ASSAULTSMG'] = { recoil = 0.45, shake = 0.05, damage = 0.9 },
    ['WEAPON_COMBATPDW'] = { recoil = 0.4, shake = 0.04, damage = 0.9 },
    ['WEAPON_MACHINEPISTOL'] = { recoil = 0.5, shake = 0.07, damage = 0.7 },
    ['WEAPON_MINISMG'] = { recoil = 0.6, shake = 0.08, damage = 0.7 },

    -- [GROUP_RIFLE]
    ['GROUP_RIFLE'] = { recoil = 0.7, shake = 0.05, damage = 1.0 },
    ['WEAPON_ASSAULTRIFLE'] = { recoil = 0.7, shake = 0.06, damage = 1.0 },
    ['WEAPON_CARBINERIFLE'] = { recoil = 0.65, shake = 0.05, damage = 1.0 },
    ['WEAPON_ADVANCEDRIFLE'] = { recoil = 0.75, shake = 0.06, damage = 1.1 },
    ['WEAPON_SPECIALCARBINE'] = { recoil = 0.6, shake = 0.05, damage = 1.0 },
    ['WEAPON_BULLPUPRIFLE'] = { recoil = 0.7, shake = 0.06, damage = 1.0 },
    ['WEAPON_COMPACTRIFLE'] = { recoil = 0.9, shake = 0.09, damage = 0.9 },

    -- [GROUP_SHOTGUN]
    ['GROUP_SHOTGUN'] = { recoil = 1.2, shake = 0.12, damage = 1.0 },
    ['WEAPON_PUMPSHOTGUN'] = { recoil = 1.5, shake = 0.15, damage = 1.0 },
    ['WEAPON_SAWNOFFSHOTGUN'] = { recoil = 2.0, shake = 0.20, damage = 1.2 },
    ['WEAPON_ASSAULTSHOTGUN'] = { recoil = 1.0, shake = 0.12, damage = 0.9 },
    ['WEAPON_BULLPUPSHOTGUN'] = { recoil = 1.4, shake = 0.15, damage = 1.0 },
    ['WEAPON_MUSKET'] = { recoil = 2.5, shake = 0.25, damage = 2.5 },
    ['WEAPON_HEAVYSHOTGUN'] = { recoil = 1.2, shake = 0.14, damage = 1.1 },
    ['WEAPON_DBSHOTGUN'] = { recoil = 2.2, shake = 0.22, damage = 1.4 },

    -- [GROUP_MG]
    ['GROUP_MG'] = { recoil = 0.9, shake = 0.08, damage = 1.1 },
    ['WEAPON_MG'] = { recoil = 0.9, shake = 0.08, damage = 1.0 },
    ['WEAPON_COMBATMG'] = { recoil = 1.0, shake = 0.10, damage = 1.1 },
    ['WEAPON_GUSENBERG'] = { recoil = 0.8, shake = 0.07, damage = 0.9 },

    -- [GROUP_SNIPER]
    ['GROUP_SNIPER'] = { recoil = 1.5, shake = 0.20, damage = 1.5 },
    ['WEAPON_SNIPERRIFLE'] = { recoil = 2.0, shake = 0.20, damage = 2.0 },
    ['WEAPON_HEAVYSNIPER'] = { recoil = 3.0, shake = 0.30, damage = 3.0 },
    ['WEAPON_MARKSMANRIFLE'] = { recoil = 0.8, shake = 0.08, damage = 1.2 },
  }
}
