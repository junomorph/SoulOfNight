#function jmp_son:item/sword_of_night/sneak/sight_beam  line5

#2tickごとに音が鳴る
scoreboard players add @s jmp_son.sound 1
execute if entity @s[scores={jmp_son.sound=3..}] run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 0.5 1.5
scoreboard players reset @s[scores={jmp_son.sound=3..}] jmp_son.sound