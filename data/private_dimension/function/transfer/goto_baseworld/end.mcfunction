## 移動先で実行される

# 演出
  function private_dimension:event/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# バックマーカーを削除して、フォースロードを解除
  kill @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1]
  forceload remove ~ ~
