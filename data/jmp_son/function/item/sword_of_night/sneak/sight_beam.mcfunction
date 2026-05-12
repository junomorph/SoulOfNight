#function jmp_son:item/sword_of_night/sneak/sneeaking    line14
#ここから先はほとんどChuzumeさんのほうのと同じ処理

#接触判定
execute if entity @s[distance=3..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0] at @e[dx=0] rotated ~ 0 if block ^ ^ ^-1 #jmp_son:no_collision at @s positioned ~0.5 ~0.5 ~0.5 run function jmp_son:item/sword_of_night/sneak/sight_sound
execute if entity @s[scores={jmp_son.use_sneaking=0..},distance=3..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0] at @e[dx=0] rotated ~ 0 if block ^ ^ ^-1 #jmp_son:no_collision at @s positioned ~0.5 ~0.5 ~0.5 run function jmp_son:item/sword_of_night/sneak/teleport_before
execute if entity @s[scores={jmp_son.use_sneaking=0..},distance=3..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0] at @e[dx=0] rotated ~ 0 if block ^ ^ ^-1 #jmp_son:no_collision run return run function jmp_son:item/sword_of_night/sneak/teleport

execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #jmp_son:no_collision positioned ^ ^ ^0.5 run function jmp_son:item/sword_of_night/sneak/sight_beam