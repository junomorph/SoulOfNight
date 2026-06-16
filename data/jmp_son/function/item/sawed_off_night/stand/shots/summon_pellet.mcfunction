$execute positioned ^$(x) ^$(y) ^4 run summon marker ~ ~ ~ {Tags:[jmp_son.sawedon_pellet_target]}
execute anchored eyes positioned ^ ^ ^1 facing entity @n[tag=jmp_son.sawedon_pellet_target] feet run function jmp_son:item/sawed_off_night/stand/shots/raycast
$execute positioned ^$(x) ^$(y) ^4 run kill @n[tag=jmp_son.sawedon_pellet_target,type=marker]
data remove storage jmp_son spread

#next pellet
scoreboard players add @s jmp_son.summoning_pellets 1
execute if score @s jmp_son.summoning_pellets >= #config jmp_son.summoning_pellets run return run scoreboard players reset @s jmp_son.summoning_pellets
execute if score @s jmp_son.summoning_pellets < #config jmp_son.summoning_pellets run function jmp_son:item/sawed_off_night/stand/shots/