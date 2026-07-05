#function jmp_son:tick  L4

#振り上げられるように
execute if entity @s[predicate=jmp_son:holding_swordon] run item modify entity @s weapon.mainhand jmp_son:consumable_trident

#スタブ
execute if entity @s[scores={jmp_son.raise=0},tag=jmp_son.stab_ready] run function jmp_son:item/sword_of_night/stand/stab