#function jmp_son:item/sawed_off_night/tick_holding_sawedon

#射撃
execute if entity @s[scores={jmp_son.rclick_coas=0..},predicate=!jmp_son:sawed_off_night/reloading] anchored eyes positioned ^-0.25 ^-0.15 ^0.5 run function jmp_son:item/sawed_off_night/stand/shots/start