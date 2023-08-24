gamerule spawnRadius 0

scoreboard objectives add x dummy
scoreboard objectives add y dummy 
scoreboard objectives add z dummy
scoreboard objectives add SL dummy
scoreboard objectives add deathcheck deathCount
scoreboard objectives add deaths dummy "Blame Board"

execute unless score !setup SL matches 1 scoreboard objectives setdisplay sidebar deaths
execute unless score !setup SL matches 1 scoreboard players set !hurtdist SL 15
execute unless score !setup SL matches 1 scoreboard players set !dieon SL 1
scorebard players set !setup SL 1
