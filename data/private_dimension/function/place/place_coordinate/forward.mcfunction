# 進みきったら60度回して終了、頂点の処理へ
  execute if score $ring.forward PrivateDim.PlotOp matches ..0 rotated ~60 0 run return \
  run function private_dimension:place/place_coordinate/vertex

# カウントダウン
  scoreboard players remove $ring.forward PrivateDim.PlotOp 1

# 再帰
  execute positioned ^ ^ ^4285000 run function private_dimension:place/place_coordinate/forward

# 表示リセット
#scoreboard players reset * PrivateDim.PlotOp
