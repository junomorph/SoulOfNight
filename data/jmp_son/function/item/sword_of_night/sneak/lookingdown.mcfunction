#function jmp_son:item/sword_of_night/sneak/sneaking  line12

tag @s remove jmp_son.tp_ready
scoreboard players set @s jmp_son.ct.tp 40
execute if entity @s[tag=jmp_son.portalplaced] run return run function jmp_son:item/sword_of_night/sneak/portal_ready
execute if entity @s[tag=!jmp_son.portalplaced] run function jmp_son:item/sword_of_night/sneak/portal_place