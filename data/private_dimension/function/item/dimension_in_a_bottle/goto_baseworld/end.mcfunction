#> private_dimension:item/dimension_in_a_bottle/goto_baseworld/end
#
# 移動先で実行される
#
# @within function private_dimension:item/dimension_in_a_bottle/goto_baseworld/goto_backmarker

# 演出
  function private_dimension:item/dimension_in_a_bottle/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:item/dimension_in_a_bottle/pull_mobs

# バックマーカーを削除して、フォースロードを解除
  kill @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1]
  forceload remove ~ ~
