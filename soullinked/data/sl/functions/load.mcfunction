gamerule spawnRadius 0

scoreboard objectives add x dummy
scoreboard objectives add y dummy 
scoreboard objectives add z dummy
scoreboard objectives add SL dummy
scoreboard objectives add deathcheck deathCount
scoreboard objectives add deaths dummy "Blame Board"

execute unless score !setup SL matches 1 run scoreboard objectives setdisplay sidebar deaths
execute unless score !setup SL matches 1 run scoreboard players set !hurtdist SL 15
execute unless score !setup SL matches 1 run scoreboard players set !dieon SL 1
scoreboard players set !setup SL 1

scoreboard objectives add spawnx dummy
scoreboard objectives add spawny dummy
scoreboard objectives add spawnz dummy
scoreboard objectives add oldspawnx dummy
scoreboard objectives add oldspawny dummy
scoreboard objectives add oldspawnz dummy
