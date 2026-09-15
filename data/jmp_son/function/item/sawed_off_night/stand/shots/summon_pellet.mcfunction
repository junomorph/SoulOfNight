tag @s add jmp_son.firing
$execute facing ^$(x) ^$(y) ^10 positioned ^ ^ ^0.2 run function jmp_son:item/sawed_off_night/stand/shots/raycast
tag @s remove jmp_son.firing
data remove storage jmp_son spread
#$say $(x), $(y)

#next pellet
scoreboard players add @s jmp_son.summoning_pellets 1
execute if score @s jmp_son.summoning_pellets >= #config jmp_son.config.pellets run return run scoreboard players reset @s jmp_son.summoning_pellets
execute if score @s jmp_son.summoning_pellets < #config jmp_son.config.pellets run function jmp_son:item/sawed_off_night/stand/shots/randomize