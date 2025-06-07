## 使用時

# リセット
  advancement revoke @s only private_dimension:item/consume

# 演出 + エフェクト
  execute at @s run function private_dimension:event/vfx
  effect give @s blindness 1 0 true

# スニークしてたら周囲の存在を巻き込んで移動する
  execute if predicate private_dimension:sneak run tag @e[type=!#private_dimension:cannot_tp,distance=..3,limit=10] add PrivateDim.Bring

# プライベート次元でないなら、プライベート次元に移動
  execute unless dimension private_dimension:private_area run return run function private_dimension:transfer/to_myplot/check_haveplot

# プライベート次元なら、ベースワールドに帰還
  function private_dimension:transfer/to_baseworld/main
