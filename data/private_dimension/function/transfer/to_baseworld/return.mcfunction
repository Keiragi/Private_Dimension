## 元の地点に戻る

# 移動
  tp @s ~ ~ ~ ~ ~

# 演出
  function private_dimension:event/vfx

# タグ付与してたらモブを引っ張ってくる
  execute as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# 落下のリセット
  effect give @s slow_falling 1 0 true
  tp @s @s

# リセット
  advancement revoke @s[advancements={private_dimension:event/fell_out=true}] only private_dimension:event/fell_out
  data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint
