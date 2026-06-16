#advancement jmp_son:sawed_off_night/shot
advancement revoke @s only jmp_son:sawed_off_night/fire

say fire!
scoreboard players set @s jmp_son.summoning_pellets 0
execute at @s run function jmp_son:item/sawed_off_night/stand/shots/