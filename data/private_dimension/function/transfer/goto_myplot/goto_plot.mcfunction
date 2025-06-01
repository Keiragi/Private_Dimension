## 自分の持ってる空間へと移動

# TP処理を仕掛ける
  function #oh_my_dat:please
  function private_dimension:transfer/goto_myplot/goto_saved_pos with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.Player

# 場所を更新した上で演出
  execute at @s run function private_dimension:event/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# 即座に追い出されないようにする
  tag @s add PrivateDim.InPlot
