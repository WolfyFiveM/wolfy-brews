# Wolfy Brews! 

# This is a fun little script to allow the kettle and coffee machine props to serve a purpose in RP

# Features 
- Coffee Machines make Coffee
- Kettle props make Tea 

# Dependancies 
- qb-core
- qb-target

# Installation

Add this to qb-smallresources > config (under custom consumables)
        ['cuppatea'] = {
            progress = {
                label = 'Drinking a cuppa...',
                time = 5000
            },
            animation = {
                animDict = 'amb@world_human_drinking@coffee@male@idle_a',
                anim = 'idle_c',
                flags = 8,
            },
            prop = {
                model = 'v_res_mcofcupdirt',
                bone = 28422,
                coords = vector3(0.0, 0.0, 0.0),
                rotation = vector3(0.0, 0.0, 0.0),
            },
            replenish = {
                type = 'Thirst',
                replenish = math.random(20, 40),
                isAlcohol = false, 
                event = false, 
                server = false 
            }
        },
        ['cuppacoffee'] = {
            progress = {
                label = 'Drinking a cuppa...',
                time = 5000
            },
            animation = {
                animDict = 'amb@world_human_drinking@coffee@male@idle_a',
                anim = 'idle_c',
                flags = 8,
            },
            prop = {
                model = 'p_amb_coffeecup_01',
                bone = 28422,
                coords = vector3(0.0, 0.0, 0.0),
                rotation = vector3(0.0, 0.0, 0.0),
            },
            replenish = {
                type = 'Thirst',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false, 
                server = false 
            }
        },

Add these items to your qb-core > shared > items.lua
    cuppacoffee                 = { name = 'cuppacoffee', label = 'Cup of Coffee', weight = 500, type = 'item', image = 'cuppacoffee.png', unique = false, useable = true, shouldClose = true, description = 'For all the thirsty out there' },
    cuppatea                 = { name = 'cuppatea', label = 'Cup of Tea', weight = 500, type = 'item', image = 'cuppatea.png', unique = false, useable = true, shouldClose = true, description = 'For all the thirsty out there' },

Take the sounds from [SOUNDS] and place them in your interact-sound > client > html > sounds

Take the images from [IMG] and place them in qb-inventory > html > images

Add `ensure wolfy-brews` to your server cfg

Then enjoy! 


