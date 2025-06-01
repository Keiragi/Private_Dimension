## 自分の持ってる空間へと移動

# 使用者判定用タグを付与
  tag @s add This

# マーカーに対してTP処理を仕掛ける
  execute summon marker run function private_dimension:transfer/goto_myplot/goto_saved_pos

# 場所を更新した上で演出
  execute at @s run function private_dimension:event/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# 即座に追い出されないようにする
  tag @s add PrivateDim.InPlot

# 使用者判定用タグを削除
  tag @s remove This
