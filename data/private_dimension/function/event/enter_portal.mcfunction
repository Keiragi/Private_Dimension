advancement revoke @s only private_dimension:event/enter_portal

execute if predicate private_dimension:blindness run return fail
execute rotated ~ 0 run tp ^ ^ ^1
effect give @s blindness 1 255 true
function private_dimension:event/vfx
