## ポータルに入る

# リセット
  advancement revoke @s only private_dimension:event/enter_portal

# 空間が違うなら終了
  execute unless dimension private_dimension:private_area run return 0

# 連続して達成しないように
  execute if predicate private_dimension:blindness run return 0
  effect give @s blindness 1 255 true

# テスト用
  tp @s 0 63 0

# 演出
  execute positioned 0 63 0 run function private_dimension:event/vfx
