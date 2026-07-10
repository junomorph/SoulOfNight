#function jmp_son:item/sword_of_night/sneak/teleport  line12

execute if data entity @s NoAI run tag @s add jmp_son.have_NoAI
scoreboard players set @s[type=!player] jmp_son.stun 30
execute if entity @s[tag=jmp_son.have_NoAI] run data modify entity @s NoAI set value true
effect give @s blindness 1 1 true
effect give @s slowness 1 2 true
particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0 25