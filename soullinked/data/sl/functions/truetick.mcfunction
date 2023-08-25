execute unless entity @e[tag=spherecenter] run summon minecraft:armor_stand 0 100 0 {DisabledSlots:16191 ,ArmorItems:[{},{},{},{id:verdant_froglight,Count:1}], Small:1, Invisible:1, Invulnerable:1, Tags:["spherecenter"]}
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

execute as @e[tag=spherecenter] if score !hurtdist SL matches 5 at @s run damage @a[distance=6..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 10 at @s run damage @a[distance=11..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 15 at @s run damage @a[distance=16..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 20 at @s run damage @a[distance=21..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 25 at @s run damage @a[distance=26..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 30 at @s run damage @a[distance=31..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 40 at @s run damage @a[distance=41..,limit=1, sort=random] 3 outside_border
execute as @e[tag=spherecenter] if score !hurtdist SL matches 50 at @s run damage @a[distance=51..,limit=1, sort=random] 3 outside_border

execute as @a[scores={deathcheck=1..}] run scoreboard players add @s deaths 1
execute as @a[scores={deathcheck=1..}] if score !dieon SL matches 1 run kill @a
execute as @a[scores={deathcheck=1..}] run scoreboard players set @a deathcheck 0

execute store result score !overplayers SL if entity @a[nbt={Dimension:"minecraft:overworld"}]
execute store result score !netherplayers SL if entity @a[nbt={Dimension:"minecraft:the_nether"}]
execute store result score !endplayers SL if entity @a[nbt={Dimension:"minecraft:the_end"}]

execute as @e[tag=spherecenter] at @s if score !netherplayers SL > !overplayers SL if score !netherplayers SL > !endplayers SL unless dimension the_nether run tp @r[nbt={Dimension:"minecraft:the_nether"}]
execute as @e[tag=spherecenter] at @s if score !overplayers SL >= !netherplayers SL if score !overplayers SL > !endplayers SL unless dimension overworld run tp @r[nbt={Dimension:"minecraft:overworld"}]
execute as @e[tag=spherecenter] at @s if score !endplayers SL >= !overplayers SL if score !endplayers SL >= !netherplayers SL unless dimension the_end run tp @r[nbt={Dimension:"minecraft:the_end"}]

scoreboard players set @a[scores={whitebed=1}] spawncheck 1
scoreboard players set @a[scores={orangebed=1}] spawncheck 1
scoreboard players set @a[scores={magentabed=1}] spawncheck 1
scoreboard players set @a[scores={lbluebed=1}] spawncheck 1
scoreboard players set @a[scores={yellowbed=1}] spawncheck 1
scoreboard players set @a[scores={limebed=1}] spawncheck 1
scoreboard players set @a[scores={pinkbed=1}] spawncheck 1
scoreboard players set @a[scores={graybed=1}] spawncheck 1
scoreboard players set @a[scores={lgraybed=1}] spawncheck 1
scoreboard players set @a[scores={cyanbed=1}] spawncheck 1
scoreboard players set @a[scores={purplebed=1}] spawncheck 1
scoreboard players set @a[scores={bluebed=1}] spawncheck 1
scoreboard players set @a[scores={brownbed=1}] spawncheck 1
scoreboard players set @a[scores={greenbed=1}] spawncheck 1
scoreboard players set @a[scores={redbed=1}] spawncheck 1
scoreboard players set @a[scores={blackbed=1}] spawncheck 1

execute as @a[scores={spawncheck=1}] at @s if dimension overworld run setworldspawn ~ ~ ~ 
execute as @a[scores={spawncheck=1}] if dimension overworld run tellraw @a {"color": "lime","extra": [{"selector":"@s"}],"text": "has set everyone's spawn!"}
scoreboard players reset @a spawncheck

execute as @a[scores={anchorcheck=1}] at @s if dimension the_nether run setworldspawn ~ ~ ~ 
execute as @a[scores={anchorcheck=1}] if dimension the_nether run tellraw @a {"color": "lime","extra": [{"selector":"@s"}],"text": "has set everyone's spawn!"}
scoreboard players reset @a anchorcheck