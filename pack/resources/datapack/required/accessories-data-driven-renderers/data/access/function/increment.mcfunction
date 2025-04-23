# Increases index
$scoreboard players add $(temp_id) access_indexes 1

$execute if score $(temp_id) access_indexes >= max access_indexes run scoreboard players set $(temp_id) access_indexes 0

$execute store result storage minecraft:access temp_index int 1 run scoreboard players get $(temp_id) access_indexes