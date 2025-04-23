# Increases index
$execute if score $(temp_id) access_indexes matches ..0 run scoreboard players operation $(temp_id) access_indexes = max access_indexes

$scoreboard players remove $(temp_id) access_indexes 1

$execute store result storage minecraft:access temp_index int 1 run scoreboard players get $(temp_id) access_indexes