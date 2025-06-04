## 取得されてるエリアかどうかチェック

# 強制読み込み
  forceload add ~ ~

# マーカーが無ければY65へと移動してエリア生成
  execute unless block ~ 59 ~ bedrock run function private_dimension:place/claim_plot/get_plot

# 岩盤を調べて、あったら横に128ずれてもう一度実行
  execute unless entity @s[tag=PrivateDim.ClaimSuccess] positioned ~ 59 ~ if block ~ ~ ~ bedrock positioned ~ ~ ~128 run function private_dimension:place/claim_plot/check

# タグ削除
  tag @s remove PrivateDim.ClaimSuccess
