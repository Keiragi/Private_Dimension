#> private_dimension:item/pull_mobs
#
# モブを引っ張ってきてタグを消す
#
# @within function private_dimension:item/**

# タグを奪う
  tag @s remove PrivateDim.Bring

# モブを引っ張ってくる
  tp @s ~ ~ ~
