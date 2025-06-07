## 作成

# 演出
  playsound minecraft:entity.ender_eye.death player @a[distance=..16] ~ ~ ~ 1 1
  playsound minecraft:item.bottle.fill_dragonbreath player @a[distance=..16] ~ ~ ~ 1 2

# 進捗消去
  advancement revoke @s only private_dimension:item/dimension_in_a_bottle
