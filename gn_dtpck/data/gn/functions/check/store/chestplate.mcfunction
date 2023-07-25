# Check:
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run function gn:store/chestplate
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run tellraw @s {"text":"You must be holding a pure netherite chestplate!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run playsound minecraft:entity.villager.no neutral @s

# Reset:
scoreboard players set @s StoreChestplate 0
