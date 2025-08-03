# Y0へとTP
  tp @s 0.0 0.0 0.0

# プレイヤーIDから島を決定
  scoreboard players operation $island PrivateDim.Plot = @s PrivateDim.Plot

# 初期設定 (最初の枠をスキップ)
  scoreboard players set $ring PrivateDim.Plot 0
  scoreboard players set #6 PrivateDim.Plot 6
  scoreboard players add $island PrivateDim.Plot 6


scoreboard players operation $step PrivateDim.Plot = $island PrivateDim.Plot
function s.private_dimension:place/place_coordinate/calc_ring

scoreboard players operation $ring.forward PrivateDim.Plot = $ring PrivateDim.Plot
scoreboard players set $step.current PrivateDim.Plot 0
execute positioned 0 63 0 rotated 0 0 run function s.private_dimension:place/place_coordinate/forward
