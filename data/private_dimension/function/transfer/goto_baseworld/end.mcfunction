## 移動先で実行される

# 演出
  function private_dimension:event/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# 落下のリセット
  effect give @s slow_falling 1 0 true
  tp @s @s
