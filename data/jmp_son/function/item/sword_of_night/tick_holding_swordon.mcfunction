#function jmp_son:item/tick_holding_son_item

execute if entity @s[tag=!jmp_son.tp_ready,scores={jmp_son.ct.tp=..0}] run function jmp_son:item/sword_of_night/tp_ready

#非スニーク時
execute if entity @s[predicate=!jmp_son:sneaking] run return run function jmp_son:item/sword_of_night/stand/standing
#スニーク時
execute if entity @s[predicate=jmp_son:sneaking] run return run function jmp_son:item/sword_of_night/sneak/sneaking