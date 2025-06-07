## 常時Tickされる処理

# アイテム保護
  execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{S.Data:{ItemID:Dimension_in_a_Bottle}}}}}] at @s run function private_dimension:item/protected

# 戻り値点の演出
  execute as @a run function private_dimension:transfer/back_point/main

# 死んだら実行される
  execute as @a[scores={PrivateDim.Death=0..}] at @s run function private_dimension:event/death

execute at @e[type=minecraft:marker] run particle minecraft:electric_spark
