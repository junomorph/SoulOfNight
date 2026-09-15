#function jmp_son:item/sawed_off_night/tick_holding_sawedon

execute store result score @s jmp_son.reload.selected_slot run data get entity @s SelectedItemSlot
execute unless score @s jmp_son.reload.last_selected_slot matches -2147483648..2147483647 run scoreboard players set @s jmp_son.reload 30
execute unless score @s jmp_son.reload.selected_slot = @s jmp_son.reload.last_selected_slot run scoreboard players set @s jmp_son.reload 30
execute if score @s jmp_son.reload.selected_slot = @s jmp_son.reload.last_selected_slot run scoreboard players remove @s jmp_son.reload 1
scoreboard players operation @s jmp_son.reload.last_selected_slot = @s jmp_son.reload.selected_slot
scoreboard players reset @s jmp_son.reload.selected_slot
execute if score @s jmp_son.reload matches ..0 run function jmp_son:item/sawed_off_night/reload_complete