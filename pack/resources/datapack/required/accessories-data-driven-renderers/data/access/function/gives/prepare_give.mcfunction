# Store Id
data modify storage minecraft:access temp_id set from entity @s Tags[0]

# Get Enitiy ID via the machine ID
function access:gives/get_entity_id with storage minecraft:access