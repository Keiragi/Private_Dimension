# if(step%(ring-1)==0)
#   {
#     60回転
#   }

# ステップを数える
  scoreboard players operation $step.mod PrivateDim.PlotOp = $step.current PrivateDim.PlotOp
  scoreboard players add $step.current PrivateDim.PlotOp 1

# step / (ring-1)
  scoreboard players operation $step.mod PrivateDim.PlotOp %= $ring PrivateDim.PlotOp

# 終了条件 + 設置処理
  execute if score $step.current PrivateDim.PlotOp = $step PrivateDim.PlotOp run function private_dimension:place/my_plot/get_plot

# 余りが0なら60度回転 そうでなければそのままで前進
  execute if score $step.mod PrivateDim.PlotOp matches 0 rotated ~60 0 positioned ^ ^ ^4285000 run return run function private_dimension:place/place_coordinate/vertex
  execute positioned ^ ^ ^4285000 run function private_dimension:place/place_coordinate/vertex
