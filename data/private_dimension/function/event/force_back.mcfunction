#> private_dimension:entity/plotborder/force_back
#
# 帰れ！！！！
#
# @within function private_dimension:entity/plotborder/tick

# 自身と同じIDのバックマーカーへ移動
  execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s Chuz.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1] Chuz.EntityID run tp @s ~ ~ ~

# 演出
  execute at @s run function private_dimension:event/vfx

# バックマーカーを削除して、フォースロードを解除
  execute at @s run kill @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1]
  execute at @s run forceload remove ~ ~

# 落下のリセット
  effect give @s slow_falling 1 0 true
  tp @s @s

# リセット
  advancement revoke @s only private_dimension:event/fell_out
