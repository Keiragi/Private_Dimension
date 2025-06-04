execute unless entity @e[tag=test1] run summon armor_stand ~ ~ ~ {Tags:["test","test1"],Rotation:[000f,0f]}
execute unless entity @e[tag=test2] run summon armor_stand ~ ~ ~ {Tags:["test","test2"],Rotation:[060f,0f]}
execute unless entity @e[tag=test3] run summon armor_stand ~ ~ ~ {Tags:["test","test3"],Rotation:[120f,0f]}
execute unless entity @e[tag=test4] run summon armor_stand ~ ~ ~ {Tags:["test","test4"],Rotation:[180f,0f]}
execute unless entity @e[tag=test5] run summon armor_stand ~ ~ ~ {Tags:["test","test5"],Rotation:[240f,0f]}
execute unless entity @e[tag=test6] run summon armor_stand ~ ~ ~ {Tags:["test","test6"],Rotation:[300f,0f]}

summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}
execute at @e[tag=mark] rotated as @e[tag=test] positioned ^ ^ ^3 unless entity @e[tag=mark,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Tags:["mark"],Particle:{type:"block",block_state:"minecraft:air"},Duration:1}


#execute at @e[tag=mark] run particle dust{color:[1f,0f,0f],scale:2f} ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=mark] run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a
kill @e[type=area_effect_cloud]
#execute at @e[tag=mark] run particle dust{color:[0f,0f,1f],scale:0.5f} ~ ~ ~ 5 0 0 0 10 force @a
#execute at @e[tag=mark] run particle dust{color:[0f,0f,1f],scale:0.5f} ~ ~ ~ 0 0 5 0 10 force @a
