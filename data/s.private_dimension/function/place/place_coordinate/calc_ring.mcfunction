
#?   // Ring calc
#   while(true) {
#     $ring.steps = $ring * 6
#     if ($step < $ring.steps) {
#       break
#     }
#     $step -= $ring.steps
#     $ring +=1
#   }

scoreboard players operation $Ring.Points PrivateDim.Plot = $Ring PrivateDim.Plot
scoreboard players operation $Ring.Points PrivateDim.Plot *= #6 PrivateDim.Plot
execute if score $Step PrivateDim.Plot <= $Ring.Points PrivateDim.Plot run return 0
scoreboard players operation $Step PrivateDim.Plot -= $Ring.Points PrivateDim.Plot
scoreboard players add $Ring PrivateDim.Plot 1
function s.private_dimension:place/place_coordinate/calc_ring
