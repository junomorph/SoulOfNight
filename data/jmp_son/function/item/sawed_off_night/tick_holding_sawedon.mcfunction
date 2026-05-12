#function jmp_son:tick line6

#非スニーク時
execute as @a[predicate=jmp_son:holding_sawedon,predicate=!jmp_son:sneaking] at @s run return run function jmp_son:item/sawed_off_night/stand/standing
#スニーク時
execute as @a[predicate=jmp_son:holding_sawedon,predicate=jmp_son:sneaking] at @s run function jmp_son:item/sawed_off_night/sneak/sneaking