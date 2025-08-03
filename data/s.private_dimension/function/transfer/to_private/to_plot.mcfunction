## 自分の持ってる空間へと移動

# TP処理を仕掛ける
  function #oh_my_dat:please
  function s.private_dimension:transfer/goto_saved_pos with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.PlotPoint

# 場所を更新した上で演出
  execute at @s run function s.private_dimension:event/vfx

# タグを付与したモブを移動
  function s.private_dimension:transfer/pull_mobs
