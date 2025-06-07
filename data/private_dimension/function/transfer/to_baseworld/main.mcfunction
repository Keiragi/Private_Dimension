## これを実行すれば元の位置に戻る

# 特殊空間でなければキャンセル
  execute unless dimension private_dimension:private_area run return 0

# 個人ストレージ呼び出し
  function #oh_my_dat:please

# 戻り値点を指定
  function private_dimension:transfer/to_baseworld/at_back_point \
  with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PrivateDim.BackPoint
