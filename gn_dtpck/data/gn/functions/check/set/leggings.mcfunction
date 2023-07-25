# Search:
tag @s add find_check_set_sid_leggings_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_check_set_sid_leggings_this] sid run tag @s add find_check_set_sid_leggings_this_armor

# Check:
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run tellraw @s {"text":"You must be holding a gilded netherite leggings!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run tellraw @s {"text":"You must store your leggings firstly!","color":"aqua"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run playsound minecraft:entity.villager.no neutral @s

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run tellraw @s {"text":"You must be holding a gilded netherite leggings and store your leggings firstly!","color":"aqua"}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run playsound minecraft:entity.villager.no neutral @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",tag:{gilded:1}}}] if entity @e[type=armor_stand,tag=find_check_set_sid_leggings_this_armor,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:leather_leggings"}]}] run function gn:set/leggings

# Reset:
tag @e[tag=find_check_set_sid_leggings_this_armor] remove find_check_set_sid_leggings_this_armor
tag @s remove find_check_set_sid_leggings_this
scoreboard players set @s SetLeggings 0
