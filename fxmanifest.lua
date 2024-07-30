fx_version 'cerulean'

game 'gta5'

author 'Wolfy'
description 'Brews - Make tea and coffee'

version '1.0.0'

shared_scripts {
	'config.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

dependencies {
	'qb-target',
	'qb-core',
}

lua54 'yes'