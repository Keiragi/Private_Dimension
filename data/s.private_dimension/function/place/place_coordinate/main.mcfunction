# Y0へとTP
  tp @s 0.0 0.0 0.0

# hubの確認
  function s.private_dimension:place/hub/main

# プレイヤーIDから島を決定
  scoreboard players operation $Island PrivateDim.Plot = @s PrivateDim.Plot

# 初期設定 (最初の枠をスキップ)
  scoreboard players set $Ring PrivateDim.Plot 0
  scoreboard players set #6 PrivateDim.Plot 6
  scoreboard players add $Island PrivateDim.Plot 6


scoreboard players operation $Step PrivateDim.Plot = $Island PrivateDim.Plot
function s.private_dimension:place/place_coordinate/calc_ring

scoreboard players operation $Ring.Forward PrivateDim.Plot = $Ring PrivateDim.Plot
scoreboard players set $Step.Current PrivateDim.Plot 0
execute positioned 0 63 0 rotated 0 0 run function s.private_dimension:place/place_coordinate/forward
