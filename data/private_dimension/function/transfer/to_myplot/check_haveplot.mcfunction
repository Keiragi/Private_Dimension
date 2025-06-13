## 個人ディメンションに移動

# 戻る地点を記録しておく
  function #oh_my_dat:please
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint set from entity @s
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[0]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosY set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[1]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosZ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[2]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.RotX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Rotation[0]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.RotY set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Rotation[1]

# スコアID
  execute unless score @s PrivateDim.PlotID matches 1.. run function private_dimension:init/player_id

# 土地を持ってるなら移動
  execute if score @s PrivateDim.HavePlot matches 1 run function private_dimension:transfer/to_myplot/goto_plot

# 持ってなかったら土地作る処理に
  execute unless score @s PrivateDim.HavePlot matches 1 in private_dimension:private_world run function private_dimension:place/my_plot/goto_000
