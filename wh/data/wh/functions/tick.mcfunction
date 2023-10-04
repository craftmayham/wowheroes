
#energyboost
scoreboard players add @a[scores={energy=..119,energystat=0..9}] energy 1
scoreboard players add @a[scores={energy=..219,energystat=10..19}] energy 1
scoreboard players add @a[scores={energy=..319,energystat=20..29}] energy 1
scoreboard players add @a[scores={energy=..419,energystat=30..39}] energy 1
scoreboard players add @a[scores={energy=..519,energystat=40..49}] energy 1
scoreboard players add @a[scores={energy=..619,energystat=50..}] energy 1

#bodyeffect
execute as @a at @s run function wh:bodyeffect

#actionbarsetup
execute as @a[scores={type=2}] run title @s actionbar ["",{"text":">>Energy:","color":"blue"},{"score":{"name":"@s","objective":"energy"},"color":"red"},{"text":"<<","color":"blue"}]
execute as @a[scores={type=3}] run title @s actionbar ["",{"text":">>Energy:","color":"blue"},{"score":{"name":"@s","objective":"energy"},"color":"red"},{"text":"<<>>Cooldown:","color":"blue"},{"score":{"name":"@s","objective":"cooldown"},"color":"red"},{"text":"<<","color":"blue"}]

#rangeattack1
execute as @a[scores={sneak=1..,type=2,energy=20..},nbt={SelectedItemSlot:8}] at @s run scoreboard players set @s range 15
execute as @a[scores={sneak=1..,type=2,energy=20..},nbt={SelectedItemSlot:8}] at @s positioned ~ ~1 ~ positioned ^ ^ ^2.2 if block ~ ~ ~ #wh:ray_permeable run function wh:raycast
execute as @a[scores={sneak=1..,type=2,energy=20..},nbt={SelectedItemSlot:8}] at @s run scoreboard players remove @s energy 20

#speed
execute as @a at @a store result storage minecraft:power r int 1 run scoreboard players get @s r
execute as @a at @a store result storage minecraft:power g int 1 run scoreboard players get @s g
execute as @a at @a store result storage minecraft:power b int 1 run scoreboard players get @s b
execute as @a at @a store result storage minecraft:power s int 1 run scoreboard players get @s s
execute as @a at @a store result storage minecraft:power p int 1 run scoreboard players get @s powerstat
execute as @a[scores={move=1..},tag=speed] at @s run function wh:sprintincrease with storage minecraft:power

#flight
execute as @a[scores={sneak=1..,type=4,energy=20..},nbt={SelectedItemSlot:8}] run effect give craftmayham minecraft:levitation 1 10 true
execute as @a[scores={sneak=1..,type=4,energy=20..},nbt={SelectedItemSlot:8}] run effect give craftmayham minecraft:slow_falling 10 2 true

#misc
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
execute if entity @a[scores={sneak=1..}] run scoreboard players set @a sneak 0
execute if entity @a[scores={move=1..}] run scoreboard players set @a move 0
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:262}}}] if entity @s[scores={rightclick=1}] run function wh:nomu_transform
execute if entity @a[scores={rightclick=1..}] run scoreboard players set @a rightclick 0


