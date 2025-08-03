## 中央島へと移動
  execute in s.private_dimension:private_world run tp @s 0 63 0 0 0

# 場所を更新した上で演出
  execute at @s run function s.private_dimension:event/vfx
