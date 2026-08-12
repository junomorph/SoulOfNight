#function jmp_son:tick

#非スニーク時
execute if entity @s[predicate=!jmp_son:sneaking] run return run function jmp_son:item/sword_of_night/stand/standing
#スニーク時
execute if entity @s[predicate=jmp_son:sneaking] run function jmp_son:item/sword_of_night/sneak/sneaking