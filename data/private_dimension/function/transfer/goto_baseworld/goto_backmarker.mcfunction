## 使った場所に戻る

# 自身と同じIDのバックマーカーへ移動
  function #oh_my_dat:please
  function private_dimension:transfer/goto_saved_pos with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint

# 場所を更新した上で諸々の処理を実行
  execute at @s run function private_dimension:transfer/goto_baseworld/end
