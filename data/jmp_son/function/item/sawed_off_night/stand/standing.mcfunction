#function jmp_son:item/sawed_off_night/tick_holding_sawedon

#射撃
execute if entity @s[predicate=jmp_son:holding_sawedon_ready,predicate=jmp_son:ready2fire] run function jmp_son:item/sawed_off_night/stand/shot