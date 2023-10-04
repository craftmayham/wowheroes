execute as @a at @s store result storage minecraft:power p int 1 run scoreboard players get @s powerstat

#dolphins_grace
execute as @a at @s run function wh:buffeffects with storage minecraft:power

#water_breathing
effect give @a[tag=dolphin] minecraft:water_breathing infinite 0 true
#fire_resistance
effect give @a[tag=fire_resistance] minecraft:fire_resistance infinite 0 true
#glowing
effect give @a[tag=glowing] minecraft:glowing infinite 0 true
#invisibility
effect give @a[tag=invisible] minecraft:invisibility infinite 0 true
#slow_falling
effect give @a[tag=slow_falling] minecraft:slow_falling infinite 0 true
#night_vision
effect give @a[tag=night_vision] minecraft:night_vision infinite 0 true

#healthstat
effect give @a[scores={healthstat=10..19}] minecraft:health_boost infinite 1 true
effect give @a[scores={healthstat=20..29}] minecraft:health_boost infinite 2 true
effect give @a[scores={healthstat=30..39}] minecraft:health_boost infinite 3 true
effect give @a[scores={healthstat=40..49}] minecraft:health_boost infinite 4 true
effect give @a[scores={healthstat=50..}] minecraft:health_boost infinite 5 true

##weaknesses

#hunger
effect give @a[scores={weakness=0}] minecraft:hunger infinite 4 true

#less_health
execute at @a[scores={weakness=1}] run attribute @s minecraft:generic.max_health base set 10

#mining_fatigue
effect give @a[scores={weakness=2}] minecraft:mining_fatigue infinite 4 true

#nausea
effect give @a[scores={weakness=3}] minecraft:nausea 15 0 true

#slowness
effect give @a[scores={weakness=4}] minecraft:slowness infinite 2 true

#weakness
effect give @a[scores={weakness=5}] minecraft:weakness infinite 4 true

#darkness
effect give @a[scores={weakness=6}] minecraft:darkness infinite 0 true

#nomu attack
execute at @e[tag=nomu] run particle minecraft:cloud ~ ~1 ~ 0.1 0.4 0.1 0.1 5 force
effect give @e[tag=nomu] minecraft:speed 5 4 true

#nomu buff
execute as @e[tag=nomu] run attribute @s minecraft:generic.knockback_resistance base set 10
execute as @e[tag=nomu] run attribute @s minecraft:generic.max_health base set 300
effect give @e[tag=nomu] minecraft:regeneration infinite 1 true
effect give @e[tag=nomu] minecraft:strength infinite 1 true

#criminal buff
effect give @e[tag=criminal,limit=1,sort=random] minecraft:speed 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:resistance 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:glowing 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:invisibility 30 0 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:jump_boost 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:levitation 5 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:regeneration 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:fire_resistance 60 2 true
effect give @e[tag=criminal,limit=1,sort=random] minecraft:strength 60 2 true


schedule function wh:buffs 30s