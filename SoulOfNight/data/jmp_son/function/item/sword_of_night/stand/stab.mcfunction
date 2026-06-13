#function jmp_son:item/sword_of_night/stand/standing line7

scoreboard players reset @s jmp_son.raisetime
tag @s remove jmp_son.stab_ready

##自身とターゲットとの水平角を計算する
#自身の向いている方角を .rot1 に取得
    #※マインクラフトでは、エンティティの水平方向の向き・方角(Rotation[0])のデータは、南を0として、-180~180の値をとる
execute store result score #rot1 jmp_son.rot run data get entity @s Rotation[0]
#ターゲットを探し、その方角を .rot2 に保存
execute anchored feet rotated ~ 0 positioned ^ ^ ^2 as @n[distance=..1,type=#jmp_son:mob_amsta_player,type=!armor_stand] run execute store result score #rot2 jmp_son.rot run data get entity @s Rotation[0]
#自身とターゲットとの水平角を計算し、それが < |90| なら成功
scoreboard players operation #rot1 jmp_son.rot -= #rot2 jmp_son.rot
execute if score #rot1 jmp_son.rot > #180 jmp_son.rot_num run scoreboard players operation #rot1 jmp_son.rot -= #360 jmp_son.rot_num
execute if score #rot1 jmp_son.rot < #-180 jmp_son.rot_num run scoreboard players operation #rot1 jmp_son.rot += #360 jmp_son.rot_num
execute if score #rot1 jmp_son.rot matches -90..90 anchored feet rotated ~ 0 positioned ^ ^ ^2 as @n[distance=..1,type=#jmp_son:mob_amsta_player,type=!armor_stand] run function jmp_son:item/sword_of_night/stand/stab_success
execute if score #rot1 jmp_son.rot matches -90..90 anchored feet rotated ~ 0 positioned ^ ^ ^2 as @s run scoreboard players set @s jmp_son.ct.tp 0

#変数のリセット
scoreboard players reset #rot1 jmp_son.rot
scoreboard players reset #rot2 jmp_son.rot