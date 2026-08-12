#function jmp_son:item/sawed_off_night/tick_holding_sawedon

playsound block.iron_trapdoor.close player @a[distance=..5] ~ ~ ~ 1 1.2 0
playsound block.iron_trapdoor.open player @a[distance=..5] ~ ~ ~ 1 1.1 0

scoreboard players reset @s jmp_son.reload
tag @s remove jmp_son.reloading
item modify entity @s weapon.mainhand jmp_son:break_false
scoreboard players set @s jmp_son.sawedon_ammo 2