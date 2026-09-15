#function jmp_son:item/sawed_off_night/reloading

playsound block.iron_trapdoor.close player @a[distance=..5] ~ ~ ~ 1 1.2 0
playsound block.iron_trapdoor.open player @a[distance=..5] ~ ~ ~ 1 1.1 0

item modify entity @s weapon.mainhand jmp_son:sawed_off_night/reload_cmp
scoreboard players reset @s jmp_son.reload
scoreboard players reset @s jmp_son.reload.last_selected_slot