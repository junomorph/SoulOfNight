#function jmp_son:tick line6

execute unless score @s jmp_son.sawedon_ammo matches 0.. run scoreboard players set @s jmp_son.sawedon_ammo 0

#弾がないならリロード
execute if score @s jmp_son.sawedon_ammo matches ..0 run return run function jmp_son:item/sawed_off_night/reload

#非スニーク時
execute as @a[predicate=!jmp_son:sneaking] at @s run return run function jmp_son:item/sawed_off_night/stand/standing
#スニーク時
execute as @a[predicate=jmp_son:sneaking] at @s run function jmp_son:item/sawed_off_night/sneak/sneaking