## 死んだときもろもろ

# 自身のバックマーカーを削除、その場所のロードを解除
  execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s S.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.01,limit=1] S.EntityID run forceload remove ~ ~
  execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s S.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.01,limit=1] S.EntityID run kill @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.01,limit=1]

# スコアリセット
  scoreboard players reset @s PrivateDim.Death
