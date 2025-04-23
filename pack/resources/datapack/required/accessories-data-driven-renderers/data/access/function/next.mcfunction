# Store Id
data modify storage minecraft:access temp_id set from entity @s Tags[0]

# Increment Index
function access:increment with storage minecraft:access

# Replace Entity
function access:replace_entity with storage minecraft:access

