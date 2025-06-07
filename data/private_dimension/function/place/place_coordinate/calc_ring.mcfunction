
#?   // Ring calc
#   while(true) {
#     $ring.steps = $ring * 6
#     if ($step < $ring.steps) {
#       break
#     }
#     $step -= $ring.steps
#     $ring +=1
#   }

scoreboard players operation $ring.points PrivateDim.PlotOp = $ring PrivateDim.PlotOp
scoreboard players operation $ring.points PrivateDim.PlotOp *= #6 PrivateDim.PlotOp
execute if score $step PrivateDim.PlotOp <= $ring.points PrivateDim.PlotOp run return 0
scoreboard players operation $step PrivateDim.PlotOp -= $ring.points PrivateDim.PlotOp
scoreboard players add $ring PrivateDim.PlotOp 1
function private_dimension:place/place_coordinate/calc_ring
