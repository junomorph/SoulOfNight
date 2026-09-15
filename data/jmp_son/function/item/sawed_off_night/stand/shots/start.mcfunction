#function

#薬室の弾を減らす
#ここカスの処理ね
execute if predicate jmp_son:sawed_off_night/1 run item modify entity @s weapon.mainhand jmp_son:sawed_off_night/chamber/0
execute if predicate jmp_son:sawed_off_night/2 run item modify entity @s weapon.mainhand jmp_son:sawed_off_night/chamber/1

#sfx
particle dust{color:[0.392,0.294,0.588],scale:0.6} ^ ^ ^ 0.01 0.01 0.01 0.01 5 normal @a[distance=..15]
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.6 1
playsound entity.warden.attack_impact player @a ~ ~ ~ 1 0.6
playsound entity.warden.attack_impact player @a ~ ~ ~ 1 0.4

#ペレットだす再帰にいれる
scoreboard players reset @s jmp_son.summoning_pellets
function jmp_son:item/sawed_off_night/stand/shots/randomize