#> private_dimension:item/goto_baseworld/goto_backmarker
#
# 使った場所に戻る
#
# @within function
#   private_dimension:item/use
#   private_dimension:entity/plotborder

# 自身と同じIDのバックマーカーへ移動
  execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s Chuz.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1] Chuz.EntityID run tp @s ~ ~ ~

# 場所を更新した上で諸々の処理を実行
  execute at @s run function private_dimension:item/goto_baseworld/end
