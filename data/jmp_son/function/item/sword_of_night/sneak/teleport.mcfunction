#function jmp_son:item/sword_of_night/sneak/sight_beam  line7

effect give @s blindness 1 0 true
tp ^ ^ ^-1.5
execute at @s facing entity @n[distance=0.1..] feet run tp @s ~ ~ ~ ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.4 1
execute at @s run playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 0.4 2
execute at @s positioned ~ ~0.5 ~ rotated ~ 0 run particle explosion ^ ^ ^0.5 0.0 0.0 0.0 0 0 force
effect give @s slow_falling 1 0 true

#テレポート相手にNoAI付与
execute positioned ^ ^ ^1 as @n[dx=0,type=!#jmp_son:not_mob] run function jmp_son:item/sword_of_night/sneak/debuff

#クールタイム設定
scoreboard players set @s jmp_son.ct.tp 40