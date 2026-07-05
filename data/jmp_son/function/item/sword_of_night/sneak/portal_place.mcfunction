#function jmp_son:item/sword_of_night/sneak/lookingdown  line4

#SFX
playsound entity.warden.attack_impact player @s ~ ~ ~ 1 1
playsound minecraft:entity.warden.death player @s ~ ~ ~ 1 1

#ポータル設置
scoreboard players set @s jmp_son.ct.tp 40
tag @s add jmp_son.portalplaced
summon marker ~ ~ ~ {Tags:[jmp_son.portal,jmp_son.init]}

#設置者とポータルをリンク
scoreboard players add #idoperator jmp_son.linkid 1
scoreboard players operation @n[tag=jmp_son.portal,tag=jmp_son.init,distance=..4] jmp_son.linkid = .idoperator jmp_son.linkid
scoreboard players operation @s jmp_son.linkid = .idoperator jmp_son.linkid
execute at @s as @n[tag=jmp_son.portal,tag=jmp_son.init,distance=..4] if score @s jmp_son.linkid = @p jmp_son.linkid run tag @s remove jmp_son.init