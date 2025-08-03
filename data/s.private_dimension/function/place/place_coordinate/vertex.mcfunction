# if(step%(ring-1)==0)
#   {
#     60回転
#   }

# ステップを数える
  scoreboard players operation $step.mod PrivateDim.Plot = $step.current PrivateDim.Plot
  scoreboard players add $step.current PrivateDim.Plot 1

# step / (ring-1)
  scoreboard players operation $step.mod PrivateDim.Plot %= $ring PrivateDim.Plot

# 終了条件 + 設置処理
  execute if score $step.current PrivateDim.Plot = $step PrivateDim.Plot run function s.private_dimension:place/my_plot/get_plot

# 余りが0なら60度回転 そうでなければそのままで前進
  execute if score $step.mod PrivateDim.Plot matches 0 rotated ~60 0 positioned ^ ^ ^4285000 run return run function s.private_dimension:place/place_coordinate/vertex
  execute positioned ^ ^ ^4285000 run function s.private_dimension:place/place_coordinate/vertex
