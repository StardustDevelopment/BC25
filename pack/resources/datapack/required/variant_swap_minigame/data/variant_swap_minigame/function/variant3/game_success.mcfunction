setblock -26 79 399 air
title @p title {"text":"Success!", "color":"green"}
title @p subtitle {"text":"You placed all blocks correctly!", "color":"aqua"}
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 1
playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 1 1
scoreboard players add @p vs_wins 1
execute if score @p vs_v3 matches 0 run scoreboard players set @p vs_v3 1
function variant_swap_minigame:variant3/cleanup
