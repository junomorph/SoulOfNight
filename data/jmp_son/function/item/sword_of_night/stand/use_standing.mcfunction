#advancement jmp_son:sword_of_night/use_standing
advancement revoke @s only jmp_son:sword_of_night/use_standing

scoreboard players set @s jmp_son.raise 2
execute unless entity @s[scores={jmp_son.raisetime=21..}] run scoreboard players add @s jmp_son.raisetime 1
execute if entity @s[scores={jmp_son.raisetime=5,jmp_son.ct.tp=1..}] run tag @s add jmp_son.stab_ready
execute if entity @s[scores={jmp_son.raisetime=5,jmp_son.ct.tp=1..}] run return run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 1 2
execute if entity @s[scores={jmp_son.raisetime=20,jmp_son.ct.tp=0}] run tag @s add jmp_son.stab_ready
execute if entity @s[scores={jmp_son.raisetime=20,jmp_son.ct.tp=0}] run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 1 1.5

execute if entity @s[tag=jmp_son.stab_ready] anchored eyes positioned ^ ^ ^0.2 run function jmp_son:item/sword_of_night/stand/stab_target_rc