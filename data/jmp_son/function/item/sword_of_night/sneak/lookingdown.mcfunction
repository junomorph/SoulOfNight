#function jmp_son:item/sword_of_night/sneak/sneaking  line12

execute if entity @s[tag=jmp_son.portalplaced,scores={jmp_son.ct.tp=0}] run return run function jmp_son:item/sword_of_night/sneak/portal_ready
execute if entity @s[tag=!jmp_son.portalplaced,scores={jmp_son.ct.tp=0}] run function jmp_son:item/sword_of_night/sneak/portal_place