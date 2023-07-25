# Check:
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run function gn:store/leggings
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run tellraw @s {"text":"You must be holding a pure netherite leggings!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run playsound minecraft:entity.villager.no neutral @s

# Reset:
scoreboard players set @s StoreLeggings 0
