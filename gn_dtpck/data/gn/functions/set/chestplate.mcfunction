# Search:
tag @s add find_set_sid_chestplate_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_set_sid_chestplate_this] sid run tag @s add find_set_sid_chestplate_this_armor
tag @s remove find_set_sid_chestplate_this

# Setting:
data modify entity @e[type=armor_stand,tag=find_set_sid_chestplate_this_armor,limit=1,sort=nearest] ArmorItems[2].id set value 'minecraft:golden_chestplate'
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=find_set_sid_chestplate_this_armor,limit=1,sort=nearest] armor.chest
item modify entity @s weapon.mainhand gn:set_chestplate
execute unless data entity @s SelectedItem.tag.display.Name run item modify entity @s weapon.mainhand gn:chestplate_name

# Done:
item replace entity @e[type=armor_stand,tag=find_set_sid_chestplate_this_armor,limit=1,sort=nearest] armor.chest with leather_chestplate
tellraw @s {"text":"You successfully changed your chestplate!","color":"aqua"}
playsound minecraft:entity.player.levelup ambient @s

# Reset:
tag @e[type=armor_stand,tag=find_set_sid_chestplate_this_armor] remove find_set_sid_chestplate_this_armor
