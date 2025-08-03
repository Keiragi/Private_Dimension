## インストールチェック

execute unless data storage shrs:context PrivateDim.Install run function s.private_dimension:init/install/main
data modify storage shrs:context PrivateDim.Install set value 1
