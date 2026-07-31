#function jmp_son:tick  line6

#振り上げできないように
execute if entity @s[predicate=jmp_son:holding_swordon] run item modify entity @s weapon.mainhand jmp_son:consumable_none

#防御バフ
effect give @s resistance 1 0 true

#下向いてたらポータル設置とかする
execute if entity @s[scores={jmp_son.ct.tp=0,jmp_son.use_sneaking=0..},x_rotation=80..90] run return run function jmp_son:item/sword_of_night/sneak/lookingdown
#下向いてなかったら視線の先のエンティティの背後にワープするモードになる
execute if entity @s[scores={jmp_son.ct.tp=0},x_rotation=-90..80] positioned ~ ~1.28 ~ positioned ^ ^ ^2 run function jmp_son:item/sword_of_night/sneak/sight_beam
execute if entity @s[scores={jmp_son.ct.tp=0},x_rotation=-90..80] positioned ~ ~1.28 ~ positioned ^ ^ ^1 run particle dust{color:[0.7,0.17,1.0],scale:0.25} ~ ~ ~ 0 0 0 0 1

scoreboard players reset @s jmp_son.rot