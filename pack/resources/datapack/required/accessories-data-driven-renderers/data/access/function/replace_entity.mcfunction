# Store Id
data modify storage minecraft:access temp_id set from entity @n[tag=access_machine] Tags[1]

# Get Current Entity via index
function access:set_current with storage minecraft:access

# Get Coords for new entity
data modify storage minecraft:access temp_x set from entity @s Pos[0]
#data modify storage minecraft:access temp_y set from entity @s Pos[1]
data modify storage minecraft:access temp_z set from entity @s Pos[2]

execute store result score temp_y access_indexes run data get entity @s Pos[1]
scoreboard players remove temp_y access_indexes 3
execute store result storage minecraft:access temp_y int 1 run scoreboard players get temp_y access_indexes


# Replace Entity
teleport @s ~ -3 ~
tag @s add access_machine_remove

function access:summon_entity with storage minecraft:access

schedule function access:move 1t replace
schedule function access:kill 5t replace