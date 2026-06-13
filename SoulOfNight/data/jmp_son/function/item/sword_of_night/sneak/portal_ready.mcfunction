#function jmp_son:item/sword_of_night/sneak/lookingdown  line3
scoreboard players set @s jmp_son.ct.tp 40
tag @s remove jmp_son.portalplaced

#debug
execute unless entity @e[tag=jmp_son.portal] run function jmp_son:item/sword_of_night/sneak/portal_jump_failed
execute at @e[tag=jmp_son.portal] unless score @n[tag=jmp_son.portal] jmp_son.linkid = @s jmp_son.linkid run function jmp_son:item/sword_of_night/sneak/portal_jump_failed
#jump
execute at @e[tag=jmp_son.portal] if score @n[tag=jmp_son.portal] jmp_son.linkid = @s jmp_son.linkid run function jmp_son:item/sword_of_night/sneak/portal_jump

scoreboard players reset @s jmp_son.linkid