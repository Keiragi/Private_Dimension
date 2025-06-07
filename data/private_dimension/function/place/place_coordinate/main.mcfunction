scoreboard players set $island PrivateDim.PlotOp 24
scoreboard players set $ring PrivateDim.PlotOp 0
scoreboard players set #6 PrivateDim.PlotOp 6

scoreboard players add $island PrivateDim.PlotOp 6


scoreboard players operation $step PrivateDim.PlotOp = $island PrivateDim.PlotOp
function private_dimension:place/place_coordinate/calc_ring

scoreboard players operation $ring.forward PrivateDim.PlotOp = $ring PrivateDim.PlotOp
scoreboard players set $step.current PrivateDim.PlotOp 0
execute rotated 0 0 run function private_dimension:place/place_coordinate/forward
