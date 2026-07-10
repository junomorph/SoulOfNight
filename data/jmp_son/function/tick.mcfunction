#minecraft:tags/function/tick

#Sword of Night
execute as @a[predicate=jmp_son:holding_swordon] at @s run function jmp_son:item/sword_of_night/tick_holding_swordon
#Sawed of Night
execute as @a[predicate=jmp_son:holding_sawedon] at @s run function jmp_son:item/sawed_off_night/tick_holding_sawedon
#ポータルの表示
execute as @e[type=minecraft:marker,tag=jmp_son.portal] at @s run function jmp_son:item/sword_of_night/portaldisplayer

#NoAIから復帰
execute as @e[type=!#jmp_son:not_mob,scores={jmp_son.stun=1..}] at @s run function jmp_son:item/sword_of_night/stun