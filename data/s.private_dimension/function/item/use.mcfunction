## 使用時

# リセット
  advancement revoke @s only s.private_dimension:item/consume

# 演出 + エフェクト
  execute at @s run function s.private_dimension:event/vfx
  effect give @s blindness 1 0 true

# スニークしてたら周囲の存在を巻き込んで移動する
  execute if predicate s.private_dimension:sneak run tag @e[type=!#s.private_dimension:cannot_tp,distance=..3,limit=10] add PrivateDim.Bring
  execute if predicate s.private_dimension:sneak as @a[distance=0.01..3] if items entity @s weapon.mainhand potion[custom_data~{"S.Data":{"ItemID":"Dimension_in_a_Bottle"}}] run tag @s add PrivateDim.Bring

# プライベート次元でないなら、プライベート次元に移動
  execute unless dimension s.private_dimension:private_world run return run function s.private_dimension:transfer/to_private/check_haveplot

# プライベート次元なら、ベースワールドに帰還
  function s.private_dimension:transfer/to_baseworld/main
