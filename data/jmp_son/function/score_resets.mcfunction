scoreboard players remove @a[scores={jmp_son.ct.tp=1..}] jmp_son.ct.tp 1
execute as @a unless entity @s[scores={jmp_son.ct.stab=-2147483648..2147483647}] run scoreboard players set @s jmp_son.ct.stab 0
execute as @a unless entity @s[scores={jmp_son.ct.tp=-2147483648..2147483647}] run scoreboard players set @s jmp_son.ct.tp 0
scoreboard players remove @a[scores={jmp_son.raise=1..}] jmp_son.raise 1
#scoreboard players reset @a[scores={jmp_son.shot=0..}] jmp_son.shot
scoreboard players reset @a[scores={jmp_son.use_sneaking=0..}] jmp_son.use_sneaking
scoreboard players reset @a[scores={jmp_son.raisetime=1..,jmp_son.raise=0}] jmp_son.raisetime
tag @a[tag=jmp_son.stab_ready,predicate=jmp_son:holding_swordon] remove jmp_son.stab_ready