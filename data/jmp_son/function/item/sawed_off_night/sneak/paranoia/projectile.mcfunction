#function jmp_son:tick

#当たり判定
execute positioned ^1.5 ^1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^0.5 ^1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-0.5 ^1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-1.5 ^1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit

execute positioned ^1.5 ^0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^0.5 ^0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-0.5 ^0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-1.5 ^0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit

execute positioned ^1.5 ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^0.5 ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-0.5 ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-1.5 ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit

execute positioned ^1.5 ^-1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^0.5 ^-1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-0.5 ^-1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit
execute positioned ^-1.5 ^-1.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#jmp_son:not_mob,tag=!jmp_son.hit_para,dx=0] at @s run function jmp_son:item/sawed_off_night/sneak/paranoia/hit

#移動
tp @s ^ ^ ^0.5
scoreboard players remove @s jmp_son.para_trans 1
execute if score @s jmp_son.para_trans matches ..0 run kill @s