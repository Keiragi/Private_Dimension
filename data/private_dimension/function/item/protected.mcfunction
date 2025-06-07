## キラキラ光って無敵のアイテム

# キラキラ光る
  particle minecraft:electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
  particle minecraft:dust_color_transition{from_color:[0.000,0.700,1.000],scale:0.7,to_color:[0.600,1.000,1.000]} ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# タグが付いてたら終了
  execute if entity @s[tag=PrivateDim.NBTChanged] run return 0
  # NBT変更
    data merge entity @s {Age:-32768,Invulnerable:1b}
    tag @s add PrivateDim.NBTChanged
