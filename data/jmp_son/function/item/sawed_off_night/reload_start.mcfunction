#function jmp_son:item/sawed_off_night/tick_holding_sawedon

playsound block.iron_trapdoor.close player @a[distance=..5] ~ ~ ~ 1 1.5 0
playsound block.iron_trapdoor.open player @a[distance=..5] ~ ~ ~ 1 1.4 0

item modify entity @s weapon.mainhand jmp_son:sawed_off_night/reload
scoreboard players set @s jmp_son.reload 40
execute store result score @s jmp_son.reload.last_selected_slot run data get entity @s SelectedItemSlot