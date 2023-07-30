# Search:
tag @s add find_check_set_sid_boots_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_check_set_sid_boots_this] sid run tag @s add find_check_set_sid_boots_this_armor

# Check:
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run tellraw @s {"text":"You must be holding a gilded netherite boots!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run tellraw @s {"text":"You must store your boots firstly!","color":"aqua"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run playsound minecraft:entity.villager.no neutral @s

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run tellraw @s {"text":"You must be holding a gilded netherite boots and store your boots firstly!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_boots_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_boots"}]}] run function gn:set/boots

# Reset:
tag @e[tag=find_check_set_sid_boots_this_armor] remove find_check_set_sid_boots_this_armor
tag @s remove find_check_set_sid_boots_this
scoreboard players set @s SetBoots 0
