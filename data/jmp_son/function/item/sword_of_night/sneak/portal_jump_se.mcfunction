#function jmp_son:item/sword_of_night/sneak/portal_jump   line6

playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 2 1.7
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 2 1
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.8
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 0 force