#function jmp_son:item/sword_of_night/stand/standing

tag @s add jmp_son.stabbing
##自身とターゲットとの水平角を計算する
#自身の向いている方角を .rot1 に取得
    #※マインクラフトでは、エンティティの水平方向の向き・方角(Rotation[0])のデータは、南を0として、-180~180の値をとる
execute store result score #rot1 jmp_son.rot run data get entity @s Rotation[0]
#tellraw @a {score:{name:"#rot1",objective:"jmp_son.rot"}}

#ターゲットを探し、その方角を .rot2 に保存
execute anchored eyes positioned ^ ^ ^0.2 run function jmp_son:item/sword_of_night/stand/stab_target_rc
#tellraw @a {score:{name:"#rot2",objective:"jmp_son.rot"}}
#自身とターゲットとの水平角を計算し、それが < |90| なら成功
scoreboard players operation #rot1 jmp_son.rot -= #rot2 jmp_son.rot
execute if score #rot1 jmp_son.rot > #180 jmp_son.rot_num run scoreboard players operation #rot1 jmp_son.rot -= #360 jmp_son.rot_num
execute if score #rot1 jmp_son.rot < #-180 jmp_son.rot_num run scoreboard players operation #rot1 jmp_son.rot += #360 jmp_son.rot_num
execute if score #rot1 jmp_son.rot matches -90..90 anchored eyes positioned ^ ^ ^0.2 run function jmp_son:item/sword_of_night/stand/stab_success
execute if score #rot1 jmp_son.rot matches -90..90 run scoreboard players set @s jmp_son.ct.tp 0
#tellraw @a {score:{name:"#rot1",objective:"jmp_son.rot"}}

#変数のリセット
scoreboard players reset @s jmp_son.raisetime
scoreboard players reset #rot1 jmp_son.rot
scoreboard players reset #rot2 jmp_son.rot
tag @s remove jmp_son.stab_ready
tag @s remove jmp_son.stabbing