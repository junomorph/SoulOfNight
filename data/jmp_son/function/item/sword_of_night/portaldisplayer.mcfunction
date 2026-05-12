#function jmp_son:tick  line9

#近づかないと見えないってよ
particle minecraft:glow ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..5]
particle minecraft:dust_color_transition{from_color:[0.392,0.294,0.588],scale:1,to_color:[0.600,1.000,1.000]} ~ ~0.5 ~ 0.1 0.1 0.1 1 1 force @a[distance=..5]