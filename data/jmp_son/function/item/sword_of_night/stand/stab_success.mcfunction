#function jmp_son:item/sword_of_night/stand/stab
#function This

execute if entity @s[distance=..3,tag=jmp_son.stabbing] positioned ~-0.25 ~-0.25 ~-0.25 at @n[dx=0.5,type=!#jmp_son:not_mob,type=!armor_stand,tag=!jmp_son.stab_ready] run return run function jmp_son:item/sword_of_night/stand/stabbed
execute if entity @s[distance=..3,tag=jmp_son.stabbing] positioned ~-0.25 ~-0.25 ~-0.25 unless entity @n[dx=0.5,type=!#jmp_son:not_mob,type=!armor_stand,tag=!jmp_son.stab_ready] positioned ~0.25 ~0.25 ~0.25 if block ~ ~ ~ #jmp_son:no_collision positioned ^ ^ ^0.25 run function jmp_son:item/sword_of_night/stand/stab_success