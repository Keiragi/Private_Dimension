
# 強制読み込み
  forceload add ~ ~

# 足腰対策
  effect give @s slow_falling 1 0 true

# 土地所有フラグを1にする
  scoreboard players set @s PrivateDim.HavePlot 1

# 足場置く
  setblock ~ ~ ~ air
  execute positioned ~-16 55 ~-16 run place template private_dimension:floating_island/plains

# 下に降りる
  tp @s ~ 63 ~

# ボーダー召喚
  summon marker ~ 60 ~ {Tags:["PrivateDim.PlotBorder"]}

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:transfer/pull_mobs

# 自身のPosをスコア化
  function #oh_my_dat:please
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.PosX set from entity @s Pos[0]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.PosY set from entity @s Pos[1]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.PosZ set from entity @s Pos[2]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.RotX set value 0.0
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.RotY set value 0.0
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint.Dimension set value "private_dimension:private_world"

# 場所を更新した上で演出
  execute at @s run function private_dimension:event/vfx

# 強制読み込み解除
  forceload remove all
