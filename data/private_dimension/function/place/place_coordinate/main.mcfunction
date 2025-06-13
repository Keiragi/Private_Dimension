# プレイヤーIDから島を決定
  scoreboard players operation $island PrivateDim.PlotOp = @s PrivateDim.PlotID

# 初期設定 (最初の枠をスキップ)
  scoreboard players set $ring PrivateDim.PlotOp 0
  scoreboard players set #6 PrivateDim.PlotOp 6
  scoreboard players add $island PrivateDim.PlotOp 6


scoreboard players operation $step PrivateDim.PlotOp = $island PrivateDim.PlotOp
function private_dimension:place/place_coordinate/calc_ring

scoreboard players operation $ring.forward PrivateDim.PlotOp = $ring PrivateDim.PlotOp
scoreboard players set $step.current PrivateDim.PlotOp 0
execute positioned 0 63 0 rotated 0 0 run function private_dimension:place/place_coordinate/forward
