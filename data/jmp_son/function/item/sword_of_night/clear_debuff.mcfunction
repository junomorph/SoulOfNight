#function jmp_son:item/sword_of_night/stun  L2

execute if entity @s[tag=!jmp_son.have_NoAI] run data modify entity @s NoAI set value false
tag @s[tag=jmp_son.have_NoAI] remove jmp_son.have_NoAI
scoreboard players reset @s jmp_son.stun