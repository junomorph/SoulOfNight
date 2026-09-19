#function jmp_son:item/sawed_off_night/sneak/sneaking

#ct管理
tag @s remove jmp_son.para_ready
scoreboard players set @s jmp_son.ct.para 100

#召喚
execute positioned ^ ^ ^1.2 run summon item_display ^ ^ ^ {Tags:["jmp_son.paranoia"],item:{id:stick,count:1,components:{item_model:"minecraft:soul_of_night/paranoia"}},teleport_duration:1}
execute positioned ^ ^ ^1.2 as @n[type=item_display,tag=jmp_son.paranoia] run rotate @s ~ ~
execute positioned ^ ^ ^1.2 as @n[type=item_display,tag=jmp_son.paranoia] run scoreboard players set @s jmp_son.para_trans 25

#SFX
playsound block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 1 0.85 0
playsound block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 1 0.85 0