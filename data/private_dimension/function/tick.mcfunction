#> private_dimension:tick
#
# 常時Tickされる処理
#
# @within tag/function minecraft:tick

# バックマーカーの見た目的なもの
  execute at @e[type=marker,tag=PrivateDim.BackMarker] run function private_dimension:entity/backmarker

# アイテム保護
  execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ChuzData:{ItemID:Dimension_in_a_Bottle}}}}}] at @s run function private_dimension:entity/item/protected

# 死んだら実行される
  execute as @a[scores={PrivateDim.Death=0..}] at @s run function private_dimension:event/death

# スコアID
  execute as @a unless score @s Chuz.PlayerID matches 0.. run function private_dimension:entity/player_id

execute at @e[type=minecraft:marker] run particle minecraft:electric_spark
