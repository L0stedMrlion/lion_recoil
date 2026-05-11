fx_version 'cerulean'
game 'gta5'
lua54 "true"

author "Mrlion (@lostedmrlion)"
description "Recoil system solution for your server // (WITHOUT RECOIL VERSION)"
version "2.0"

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    "client/*"
}

server_scripts {
    "server/*"
}

files {
    "config.lua",
    "stream/hud_reticle.gfx"
}
