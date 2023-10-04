scoreboard players remove @s range 1

#storergb
execute store result storage minecraft:power r int 1 run scoreboard players get @s r
execute store result storage minecraft:power g int 1 run scoreboard players get @s g
execute store result storage minecraft:power b int 1 run scoreboard players get @s b

execute store result storage minecraft:power p int 1 run scoreboard players get @s powerstat

#particles
function wh:particles/particle with storage minecraft:power


#physical
function wh:attackend/damage with storage minecraft:power

#fire
execute if score @s mutation matches 2 run function wh:attackend/fire with storage minecraft:power
#firework
execute if score @s mutation matches 3 run function wh:attackend/firework with storage minecraft:power
#explosion
execute if score @s mutation matches 1 run function wh:attackend/explosion with storage minecraft:power
execute if score @s mutation matches 1 run effect give craftmayham minecraft:resistance 4 6 true

execute if score @s range matches 1.. if block ~ ~ ~ #wh:ray_permeable positioned ^ ^ ^1 run function wh:raycast
