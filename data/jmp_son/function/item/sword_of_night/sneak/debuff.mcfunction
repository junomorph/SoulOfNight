#function jmp_son:item/sword_of_night/sneak/teleport  line12

execute if data entity @s NoAI run tag @s add jmp_son.have_NoAI
tag @s add jmp_son.debuff
data merge entity @s {NoAI:true}
data modify entity @s[nbt=!{NoAI:true}] Rotation[1] set value 45.0f
particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0 25