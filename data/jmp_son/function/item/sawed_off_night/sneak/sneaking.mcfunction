#function jmp_son:item/sawed_off_night/tick_holding_sawedon

scoreboard players set @s[scores={jmp_son.sneak_time=21..}] jmp_son.sneak_time 21
execute if entity @s[scores={jmp_son.sneak_time=20,jmp_son.ct.para=0}] run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 1 1.5
execute if entity @s[scores={jmp_son.rclick_coas=0..,jmp_son.sneak_time=20..,jmp_son.ct.para=0}] anchored eyes run function jmp_son:item/sawed_off_night/sneak/paranoia/paranoia
