## 常時Tickされる処理

# バックマーカーの見た目的なもの
  execute at @e[type=marker,tag=PrivateDim.BackMarker] run function private_dimension:transfer/back_point

# アイテム保護
  execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ChuzData:{ItemID:Dimension_in_a_Bottle}}}}}] at @s run function private_dimension:item/protected

# 死んだら実行される
  execute as @a[scores={PrivateDim.Death=0..}] at @s run function private_dimension:event/death

# スコアID
  execute as @a unless score @s S.PlayerID matches 0.. run function private_dimension:init/player_id

execute at @e[type=minecraft:marker] run particle minecraft:electric_spark
