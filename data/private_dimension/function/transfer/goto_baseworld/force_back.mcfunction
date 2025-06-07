## 帰れ！！！！

# 自身と同じIDのバックマーカーへ移動
  function #oh_my_dat:please
  function private_dimension:transfer/goto_saved_pos with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint

# 演出
  execute at @s run function private_dimension:event/vfx

# 落下のリセット
  effect give @s slow_falling 1 0 true
  tp @s @s

# リセット
  advancement revoke @s only private_dimension:event/fell_out
