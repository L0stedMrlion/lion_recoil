fx_version 'cerulean'
game 'gta5'
lua54 "true"

author "Mrlion (@lostedmrlion)"
description "Recoil script with many features!"
version "1.0"

shared_scripts {
    '@ox_lib/init.lua',
    "config.lua",
}

client_scripts {
    "client/*"
}

server_scripts {
    "server/*"
}
