fx_version 'cerulean'
game 'gta5'
lua54 "true"

author "Mrlion (@lostedmrlion)"
description "Recoil system solution for your server"
version "2.0"

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    "client/*"
}

files {
    "config.lua",
    "hud_reticle.gfx"
}
