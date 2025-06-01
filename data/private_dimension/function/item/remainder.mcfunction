## アイテムの復帰

# 利き手か逆手か
  execute if items entity @s weapon.mainhand *[custom_data~{ChuzData:{ItemID:Dimension_in_a_Bottle}}] \
  run loot replace entity @s weapon.mainhand loot private_dimension:dimension_in_a_bottle
  execute if items entity @s weapon.offhand *[custom_data~{ChuzData:{ItemID:Dimension_in_a_Bottle}}] \
  run loot replace entity @s weapon.offhand loot private_dimension:dimension_in_a_bottle
