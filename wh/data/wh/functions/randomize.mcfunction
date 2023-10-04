execute store result score @s r run random roll 0..9
execute store result score @s g run random roll 0..9
execute store result score @s b run random roll 0..9
execute store result score @s s run random roll 1..4
execute store result score @s particle run random roll 1..3
execute store result score @s type run random roll 1..4
execute if entity @s[scores={type=1}] run tag @s add flight
execute store result score @s type run random roll 1..4

