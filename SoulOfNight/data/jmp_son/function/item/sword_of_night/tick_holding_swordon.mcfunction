#function jmp_son:tick line4

#非スニーク時
execute as @a[predicate=!jmp_son:sneaking] at @s run return run function jmp_son:item/sword_of_night/stand/standing
#スニーク時
execute as @a[predicate=jmp_son:sneaking] at @s run function jmp_son:item/sword_of_night/sneak/sneaking