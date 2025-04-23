# Store Id
data modify storage minecraft:access temp_id set from entity @n[tag=access_machine] Tags[1]

# Get Enitiy ID via the machine ID
function access:gives/get_entity_id with storage minecraft:access