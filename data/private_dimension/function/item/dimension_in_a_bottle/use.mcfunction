#> private_dimension:item/dimension_in_a_bottle/use
#
# 使用時
#
# @within function private_dimension:event/throw_linger_potion/main

# リセット
  advancement revoke @s only private_dimension:consume/dimension_in_a_bottle

# 演出
  execute at @s run function private_dimension:event/vfx

# スニークしてたら周囲の存在を巻き込んで移動する
  execute if predicate private_dimension:sneak run tag @e[type=!#private_dimension:cannot_tp,distance=..3,limit=10] add PrivateDim.Bring

# エフェクト
  effect give @s blindness 1 0 true

# プライベート次元でないなら、プライベート次元に移動
  execute unless dimension private_dimension:private_area run return run function private_dimension:item/dimension_in_a_bottle/check_haveplot

# プライベート次元なら、ベースワールドに帰還
  execute if dimension private_dimension:private_area run return run function private_dimension:item/dimension_in_a_bottle/goto_baseworld/goto_backmarker
