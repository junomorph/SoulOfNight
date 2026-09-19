#minecraft:tags/function/tick

#このデタパのアイテムの処理
execute as @a[predicate=jmp_son:holding_son_item] run function jmp_son:item/tick_holding_son_item
execute as @a[predicate=jmp_son:holding_swordon_offhand] run item modify entity @s weapon.offhand jmp_son:revoke_consumable

#ポータルの表示
execute as @e[type=minecraft:marker,tag=jmp_son.portal] at @s run function jmp_son:item/sword_of_night/portaldisplayer

#パラノイア
execute as @e[type=item_display,tag=jmp_son.paranoia] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/projectile

#NoAIから復帰
execute as @e[type=!#jmp_son:not_mob,scores={jmp_son.stun=1..}] at @s run function jmp_son:item/sword_of_night/stun