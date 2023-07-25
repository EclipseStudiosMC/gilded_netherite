# Search:
tag @s add find_check_set_sid_helmet_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_check_set_sid_helmet_this] sid run tag @s add find_check_set_sid_helmet_this_armor

# Check:
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run tellraw @s {"text":"You must be holding a gilded netherite helmet!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run tellraw @s {"text":"You must store your helmet firstly!","color":"aqua"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run playsound minecraft:entity.villager.no neutral @s

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run tellraw @s {"text":"You must be holding a gilded netherite helmet and store your helmet firstly!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_helmet_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run function gn:set/helmet

# Reset:
tag @e[tag=find_check_set_sid_helmet_this_armor] remove find_check_set_sid_helmet_this_armor
tag @s remove find_check_set_sid_helmet_this
scoreboard players set @s SetHelmet 0
