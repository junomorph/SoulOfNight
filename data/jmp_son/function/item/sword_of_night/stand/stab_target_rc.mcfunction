#function jmp_son:item/sword_of_night/stand/use_standing    L11
#function jmp_son:item/sword_of_night/stand/stab    L

#particle electric_spark
execute if entity @s[distance=..3] positioned ~-0.25 ~-0.25 ~-0.25 at @n[dx=0.5,type=!#jmp_son:not_mob,type=!armor_stand,tag=!jmp_son.stab_ready] run particle minecraft:crit ~ ~0.1 ~ 0.17 0 0.17 0.04 2 force @s
execute if entity @s[distance=..3,tag=jmp_son.stabbing] positioned ~-0.25 ~-0.25 ~-0.25 as @n[dx=0.5,type=!#jmp_son:not_mob,type=!armor_stand,tag=!jmp_son.stab_ready] run execute store result score #rot2 jmp_son.rot run data get entity @s Rotation[0]
execute if entity @s[distance=..3] positioned ~-0.25 ~-0.25 ~-0.25 unless entity @n[dx=0.5,type=!#jmp_son:not_mob,type=!armor_stand,tag=!jmp_son.stab_ready] positioned ~0.25 ~0.25 ~0.25 if block ~ ~ ~ #jmp_son:no_collision positioned ^ ^ ^0.25 run function jmp_son:item/sword_of_night/stand/stab_target_rc