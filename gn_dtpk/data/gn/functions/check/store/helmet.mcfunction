# Check:
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run function gn:store/helmet
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run tellraw @s {"text":"You must be holding a pure netherite helmet!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run playsound minecraft:entity.villager.no neutral @s

# Reset:
scoreboard players set @s StoreHelmet 0
