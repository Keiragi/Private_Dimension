## 使った場所に戻る

# 自身と同じIDのバックマーカーへ移動
  execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s S.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.01,limit=1] S.EntityID run tp @s ~ ~ ~

# 場所を更新した上で諸々の処理を実行
  execute at @s run function private_dimension:transfer/goto_baseworld/end
