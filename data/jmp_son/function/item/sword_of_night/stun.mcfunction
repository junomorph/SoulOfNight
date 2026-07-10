#function
scoreboard players remove @s jmp_son.stun 1
execute if score @s jmp_son.stun matches ..0 run function jmp_son:item/sword_of_night/clear_debuff