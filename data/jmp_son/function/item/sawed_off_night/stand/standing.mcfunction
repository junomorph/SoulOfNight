#function jmp_son:item/sawed_off_night/tick_holding_sawedon

#射撃
execute if entity @s[scores={jmp_son.rclick_coas=0..,jmp_son.sawedon_ammo=1..}] anchored eyes positioned ^-0.25 ^-0.25 ^0.5 run function jmp_son:item/sawed_off_night/stand/shots/