# Check:
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run function gn:store/boots
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run tellraw @s {"text":"You must be holding a pure netherite boots!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run playsound minecraft:entity.villager.no neutral @s

# Reset:
scoreboard players set @s StoreBoots 0
