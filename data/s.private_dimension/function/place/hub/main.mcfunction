# 既に生成されていれば停止
  execute if score $Placed.Hub PrivateDim.Plot matches 1 run return 0

# hubの生成
  forceload add -24 -24 24 24
  place template s.private_dimension:floating_island/hub -24 54 -24
  forceload remove -24 -24 24 24

# 設置記録
  scoreboard players set $Placed.Hub PrivateDim.Plot 1
