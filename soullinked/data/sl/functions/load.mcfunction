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

scoreboard objectives add whitebed minecraft.used:minecraft.white_bed
scoreboard objectives add orangebed minecraft.used:minecraft.orange_bed
scoreboard objectives add magentabed minecraft.used:minecraft.magenta_bed
scoreboard objectives add lbluebed minecraft.used:minecraft.light_blue_bed
scoreboard objectives add yellowbed minecraft.used:minecraft.yellow_bed
scoreboard objectives add limebed minecraft.used:minecraft.lime_bed
scoreboard objectives add pinkbed minecraft.used:minecraft.pink_bed
scoreboard objectives add graybed minecraft.used:minecraft.gray_bed
scoreboard objectives add lgraybed minecraft.used:minecraft.light_gray_bed
scoreboard objectives add cyanbed minecraft.used:minecraft.cyan_bed
scoreboard objectives add purplebed minecraft.used:minecraft.purple_bed
scoreboard objectives add bluebed minecraft.used:minecraft.blue_bed
scoreboard objectives add brownbed minecraft.used:minecraft.brown_bed
scoreboard objectives add greenbed minecraft.used:minecraft.green_bed
scoreboard objectives add redbed minecraft.used:minecraft.red_bed
scoreboard objectives add blackbed minecraft.used:minecraft.black_bed
scoreboard objectives add anchorcheck minecraft.used:minecraft.respawn_anchor
scoreboard objectives add spawncheck dummy

