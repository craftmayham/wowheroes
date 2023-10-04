scoreboard players set @a range 0

scoreboard players set @a energy 120

scoreboard players set @a points 0

scoreboard players set @a energy 0

scoreboard players set @a sneak 1

scoreboard players set @a move 1

scoreboard players set @a cooldown 0

scoreboard players set @a mutation 0

scoreboard players set @a weakness 0

scoreboard players set @a healthstat 0
scoreboard players set @a powerstat 0
scoreboard players set @a energystat 0

give @a written_book{pages:['["",{"text":"  Power Customization\\n\\n       ","color":"dark_aqua"},{"text":" Type","color":"dark_green"},{"text":"\\n","color":"reset"},{"text":"     ","color":"black"},{"text":"\\u24ff","color":"black","clickEvent":{"action":"run_command","value":"/scoreboard players set @s type 0"}},{"text":" ","color":"black"},{"text":"\\u2776","color":"black","clickEvent":{"action":"run_command","value":"/scoreboard players set @s type 1"}},{"text":" ","color":"black"},{"text":"\\u2777","color":"black","clickEvent":{"action":"run_command","value":"/scoreboard players set @s type 2"}},{"text":" ","color":"black"},{"text":"\\u2778","color":"black","clickEvent":{"action":"run_command","value":"/scoreboard players set @s type 3"}},{"text":"\\n       Weakness","color":"black"},{"text":"\\n","color":"reset"},{"text":"       ","color":"black"},{"text":"+","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players add @s weakness 1"}},{"text":"      ","color":"black"},{"text":"-","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s weakness 1"}},{"text":"\\n","color":"reset"},{"text":"       Mutation\\n       ","color":"black"},{"text":"+","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players add @s mutation 1"}},{"text":"      ","color":"black"},{"text":"-","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s mutation 1"}},{"text":"\\n       Sub-Mutation\\n       ","color":"reset"},{"text":"+","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players add @s submutation 1"}},{"text":"      ","color":"reset"},{"text":"-","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s submutation 1"}},{"text":"\\n       Particle\\n       ","color":"reset"},{"text":"+","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players add @s particle 1"}},{"text":"      ","color":"reset"},{"text":"-","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s particle 1"}},{"text":" \\n      Body Effect\\n       ","color":"reset"},{"text":"+","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players add @s bodyeffect 1"}},{"text":"      ","color":"reset"},{"text":"-","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s bodyeffect 1"}}]'],title:"Power Customizer",author:"Customize!",display:{Lore:["Use this book to customize your ability!"]}}

give @a written_book{pages:['["",{"text":"Level Up!","bold":true,"color":"green"},{"text":"\\n\\n","color":"reset"},{"text":"+","color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[level=2..] run function wh:healthup"}},{"text":" ","color":"red"},{"text":"Health","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players get @s healthstat"}},{"text":"\\n\\n","color":"reset"},{"text":"+","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[level=2..] run function wh:energyup"}},{"text":" ","color":"dark_aqua"},{"text":"Energy","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players get @s energystat"}},{"text":"\\n\\n","color":"reset"},{"text":"+","color":"gold","clickEvent":{"action":"run_command","value":"/execute if entity @s[level=2..] run function wh:powerup"}},{"text":" ","color":"gold"},{"text":"Power","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players get @s powerstat"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n ","color":"reset"}]'],title:"LevelUp!",author:Leveling101,display:{Lore:["Use this book to level up your stats, every 4 levels can be converted to a point in any stat"]}}