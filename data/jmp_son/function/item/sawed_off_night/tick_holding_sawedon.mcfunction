#function jmp_son:item/tick_holding_son_item

execute if entity @s[tag=!jmp_son.para_ready,scores={jmp_son.ct.para=0}] run function jmp_son:item/sawed_off_night/para_ready

#弾がないならリロード
execute if entity @s[predicate=jmp_son:sawed_off_night/0,predicate=!jmp_son:sawed_off_night/reloading] run return run function jmp_son:item/sawed_off_night/reload_start
#リロード
execute if predicate jmp_son:sawed_off_night/reloading run function jmp_son:item/sawed_off_night/reloading
#残弾1発のときのオートロード
execute unless predicate jmp_son:sawed_off_night/reloading if predicate jmp_son:sawed_off_night/1 run function jmp_son:item/sawed_off_night/auto_load

#非スニーク時
execute as @a[predicate=!jmp_son:sneaking] at @s run return run function jmp_son:item/sawed_off_night/stand/standing
#スニーク時
execute as @a[predicate=jmp_son:sneaking] at @s run return run function jmp_son:item/sawed_off_night/sneak/sneaking