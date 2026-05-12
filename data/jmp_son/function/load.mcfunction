say loaded [Soul of Night]

#プレイヤーやエンティティの状態
scoreboard objectives add jmp_son.rclick_coas minecraft.used:carrot_on_a_stick
scoreboard objectives add jmp_son.sawedon_ammo dummy
scoreboard objectives add jmp_son.raise dummy
scoreboard objectives add jmp_son.raisetime dummy
scoreboard objectives add jmp_son.ct.sawedon_shot dummy
scoreboard objectives add jmp_son.ct.tp dummy
scoreboard objectives add jmp_son.ct.stab dummy
scoreboard objectives add jmp_son.sound dummy
scoreboard objectives add jmp_son.linkid dummy
scoreboard objectives add jmp_son.stun dummy
scoreboard objectives add jmp_son.use_sneaking dummy

#データ取得用の変数
scoreboard objectives add jmp_son.rot dummy

#scorebord operationで使う定数
scoreboard objectives add jmp_son.rot_num dummy
scoreboard players set #180 jmp_son.rot_num 180
scoreboard players set #-180 jmp_son.rot_num -180
scoreboard players set #360 jmp_son.rot_num 360