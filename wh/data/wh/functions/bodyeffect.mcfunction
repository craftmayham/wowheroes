execute as @a store result storage minecraft:power r int 1 run scoreboard players get @s r
execute as @a store result storage minecraft:power g int 1 run scoreboard players get @s g
execute as @a store result storage minecraft:power b int 1 run scoreboard players get @s b
execute as @a store result storage minecraft:power s int 1 run scoreboard players get @s s
function wh:particles/particle with storage minecraft:power
