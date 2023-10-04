execute store result bossbar minecraft:nomu value run data get entity @e[tag=nomu,limit=1] Health

execute if entity @e[tag=nomu] run bossbar set minecraft:nomu players @a

execute unless entity @e[tag=nomu] run bossbar set minecraft:nomu players

execute as @e[tag=nomu] store result score @s health run data get entity @s Health

