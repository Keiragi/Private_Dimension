# 進みきったら60度回して終了、頂点の処理へ
  execute if score $Ring.Forward PrivateDim.Plot matches ..0 rotated ~60 0 run return \
  run function s.private_dimension:place/place_coordinate/vertex

# カウントダウン
  scoreboard players remove $Ring.Forward PrivateDim.Plot 1

# 再帰
  execute positioned ^ ^ ^4285000 run function s.private_dimension:place/place_coordinate/forward
