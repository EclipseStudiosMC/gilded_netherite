tellraw @a {"text":"Reloading...","color":"yellow"}

# Scoreboards:
scoreboard objectives add sid dummy
scoreboard objectives add StoreHelmet trigger
scoreboard objectives add StoreChestplate trigger
scoreboard objectives add StoreLeggings trigger
scoreboard objectives add StoreBoots trigger
scoreboard objectives add SetHelmet trigger
scoreboard objectives add SetChestplate trigger
scoreboard objectives add SetLeggings trigger
scoreboard objectives add SetBoots trigger
scoreboard objectives add Info trigger
scoreboard objectives add Creds trigger

# Scoreboards tweaks:
scoreboard players set global sid 0

# Forceload:
forceload add 0 0 0 0

tellraw @a {"text":"Datapack reloaded succesfully!","color":"green"}
tellraw @a ["",{"text":"Gilded Netherite - ","color":"blue"},{"text":"By ElGeroIngles","color":"gold"}]
tellraw @a ["",{"text":"Use ","color":"aqua"},{"text":"/trigger Info ","color":"dark_aqua"},{"text":"to show the info!","color":"aqua"}]
tellraw @a ["",{"text":"Use ","color":"light_purple"},{"text":"/trigger Creds ","color":"dark_purple"},{"text":"to show the credits!","color":"light_purple"}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s
