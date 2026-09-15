#function jmp_son:item/sword_of_night/stand/stab_success

#スタブ・音
damage @n 20 player_attack by @s
playsound minecraft:entity.wither.break_block neutral @a ~ ~ ~ 0.3 1
playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0