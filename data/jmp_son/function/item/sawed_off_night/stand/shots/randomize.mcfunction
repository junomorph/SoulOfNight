#function
say rnd
data modify storage jmp_son spread set value {"x":0.0d,"y":0.0d}
execute store result storage jmp_son:spread x float 0.001 run random value -3000..3000
execute store result storage jmp_son:spread y float 0.001 run random value -3000..3000
function jmp_son:item/sawed_off_night/stand/shots/summon_pellet with storage jmp_son spread