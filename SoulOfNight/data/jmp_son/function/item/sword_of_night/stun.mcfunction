#function jmp_son:tick  line12
scoreboard players add @s jmp_son.stun 1
data merge entity @s[scores={jmp_son.stun=30},nbt={NoAI:true},tag=!jmp_son.have_NoAI] {NoAI:false}
tag @s[scores={jmp_son.stun=30}] remove jmp_son.debuff
tag @s[scores={jmp_son.stun=30}] remove jmp_son.have_NoAI
scoreboard players reset @s[scores={jmp_son.stun=30}] jmp_son.stun