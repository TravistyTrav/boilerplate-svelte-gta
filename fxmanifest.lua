fx_version 'cerulean'

version '1.0.0'

game 'gta5'

author 'Kryda'
description 'Svelte Boilerplate with Vite + TS'

lua54 'yes' -- Add in case you want to use lua 5.4 (https://www.lua.org/manual/5.4/manual.html)

shared_scripts {
}

client_scripts {
    'client/client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/js/index.js',
    'html/assets/index.css',
    'html/assets/*.png',
    'html/assets/*.jpg',
    'html/assets/*.svg',
    'html/images/*.jpg',
    'html/images/*.png',
    'html/images/*.svg',
}
