## 個人ディメンションに移動

# 戻る地点を記録しておく
  forceload add ~ ~
  summon marker ~ ~ ~ {Tags:["PrivateDim.BackMarker"]}
  scoreboard players operation @e[type=marker,distance=..0.01,limit=1] S.EntityID = @s S.PlayerID

# スコアID
  execute as @a unless score @s S.PlayerID matches 0.. run function private_dimension:init/player_id

# 土地を持ってるなら移動
  execute if score @s PrivateDim.HavePlot matches 1 run function private_dimension:transfer/goto_myplot/goto_plot

# 持ってなかったら土地作る処理に
  execute unless score @s PrivateDim.HavePlot matches 1 in private_dimension:private_area run function private_dimension:place/my_plot/goto_000
