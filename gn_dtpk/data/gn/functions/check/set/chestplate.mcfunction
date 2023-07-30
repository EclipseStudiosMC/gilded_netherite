# Search:
tag @s add find_check_set_sid_chestplate_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_check_set_sid_chestplate_this] sid run tag @s add find_check_set_sid_chestplate_this_armor

# Check:
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run tellraw @s {"text":"You must be holding a gilded netherite chestplate!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run tellraw @s {"text":"You must store your chestplate firstly!","color":"aqua"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run playsound minecraft:entity.villager.no neutral @s

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run tellraw @s {"text":"You must be holding a gilded netherite chestplate and store your chestplate firstly!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_chestplate_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate"}]}] run function gn:set/chestplate

# Reset:
tag @e[tag=find_check_set_sid_chestplate_this_armor] remove find_check_set_sid_chestplate_this_armor
tag @s remove find_check_set_sid_chestplate_this
scoreboard players set @s SetChestplate 0
