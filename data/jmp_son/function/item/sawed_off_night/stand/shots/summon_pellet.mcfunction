$execute facing ^$(x) ^$(y) ^0.01 positioned ^ ^ ^2 run function jmp_son:item/sawed_off_night/stand/shots/raycast
data remove storage jmp_son spread
say summon
#next pellet
scoreboard players add @s jmp_son.summoning_pellets 1
execute if score @s jmp_son.summoning_pellets >= #config jmp_son.summoning_pellets run return run scoreboard players reset @s jmp_son.summoning_pellets
execute if score @s jmp_son.summoning_pellets < #config jmp_son.summoning_pellets run function jmp_son:item/sawed_off_night/stand/shots/randomize