
#?   // Ring calc
#   while(true) {
#     $ring.steps = $ring * 6
#     if ($step < $ring.steps) {
#       break
#     }
#     $step -= $ring.steps
#     $ring +=1
#   }

scoreboard players operation $ring.points PrivateDim.Plot = $ring PrivateDim.Plot
scoreboard players operation $ring.points PrivateDim.Plot *= #6 PrivateDim.Plot
execute if score $step PrivateDim.Plot <= $ring.points PrivateDim.Plot run return 0
scoreboard players operation $step PrivateDim.Plot -= $ring.points PrivateDim.Plot
scoreboard players add $ring PrivateDim.Plot 1
function s.private_dimension:place/place_coordinate/calc_ring
