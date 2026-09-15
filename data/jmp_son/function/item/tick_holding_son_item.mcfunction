#function jmp_son:tick

#Sword of Night
execute as @a[predicate=jmp_son:holding_swordon] at @s run function jmp_son:item/sword_of_night/tick_holding_swordon
#Sawed off Night
execute as @a[predicate=jmp_son:holding_sawedon] at @s run function jmp_son:item/sawed_off_night/tick_holding_sawedon
