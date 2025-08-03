## 個人ディメンションに移動

# 戻る地点を記録しておく
  function #oh_my_dat:please
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos set from entity @s Pos
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Rotation set from entity @s Rotation
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Dimension set from entity @s Dimension
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[0]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosY set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[1]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.PosZ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Pos[2]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.RotX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Rotation[0]
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.RotY set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint.Rotation[1]

# スコアIDが無ければ島作成処理
  execute unless score @s PrivateDim.PlotID matches 1.. run return run function s.private_dimension:init/player_id

# 土地を持ってるなら移動
  function s.private_dimension:transfer/to_myplot/goto_plot
