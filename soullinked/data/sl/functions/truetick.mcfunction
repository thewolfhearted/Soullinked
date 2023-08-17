execute unless entity @e[tag=spherecenter] run summon minecraft:armor_stand 0 100 0 {ArmorItems:[{},{},{},{id:verdant_froglight,Count:1}], Small:1, Invisible:1, Invulnerable:1, Tags:["spherecenter"]}
execute as @e[tag=spherecenter] run data modify entity @s Motion set value 0

execute as @a store result score @s x run data get entity @s Pos[0] 1
execute as @a store result score @s y run data get entity @s Pos[1] 1
execute as @a store result score @s z run data get entity @s Pos[2] 1

scoreboard players set !standx SL 0
scoreboard players operation !standx SL += @a x 
scoreboard players operation !standx SL /= !playercount SL

scoreboard players set !standy SL 0
scoreboard players operation !standy SL += @a y 
scoreboard players operation !standy SL /= !playercount SL

scoreboard players set !standz SL 0
scoreboard players operation !standz SL += @a z
scoreboard players operation !standz SL /= !playercount SL

execute as @e[tag=spherecenter] store result entity @s Pos[0] double 1 run scoreboard players get !standx SL
execute as @e[tag=spherecenter] store result entity @s Pos[1] double 1 run scoreboard players get !standy SL
execute as @e[tag=spherecenter] store result entity @s Pos[2] double 1 run scoreboard players get !standz SL

execute as @e[tag=spherecenter] at @s run damage @a[distance=15..,limit=1, sort=random] 3 outside_border

execute as @a[scores={deathcheck=1..}] run kill @a
execute as @a[scores={deathcheck=1..}] run scoreboard players set @a deathcheck 0
