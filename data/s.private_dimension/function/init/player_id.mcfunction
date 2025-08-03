## プレイヤーIDを割り振る

# プレイヤーに数値IDを割り振る
  scoreboard players add $Plot.Core PrivateDim.Plot 1
  scoreboard players operation @s PrivateDim.Plot = $Plot.Core PrivateDim.Plot

# 島の生成
  execute in s.private_dimension:private_world positioned 0.0 0.0 0.0 run function s.private_dimension:place/place_coordinate/main
