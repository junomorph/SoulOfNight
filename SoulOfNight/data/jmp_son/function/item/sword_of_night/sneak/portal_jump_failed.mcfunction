#function jmp_son:item/sword_of_night/sneak/portal_ready

playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.5 1.2
playsound minecraft:entity.wind_charge.wind_burst player @s ~ ~ ~ 0.7 0.4
playsound block.beacon.deactivate player @s ~ ~ ~ 1 1

particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 5 force @a[distance=..10]