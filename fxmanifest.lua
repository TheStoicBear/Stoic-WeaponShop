fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'TheStoicBear'
description 'Stoic-WeaponShop'
version '1.0.0'

client_scripts {
    'source/c_main.lua',
    'source/c_events.lua',
    'source/npcs.lua',
    'source/locals.lua'
}
server_script 'source/s_events.lua'
shared_scripts{ 
    "@ND_Core/init.lua",
    '@ox_lib/init.lua',
    'config.lua',
    'source/locals.lua'
} 

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/banner.png',
    'html/pricedown bl.otf'
}