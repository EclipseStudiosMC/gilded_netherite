# Search:
tag @s add find_set_sid_helmet_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_set_sid_helmet_this] sid run tag @s add find_set_sid_helmet_this_armor
tag @s remove find_set_sid_helmet_this

# Setting:
data modify entity @e[type=armor_stand,tag=find_set_sid_helmet_this_armor,limit=1,sort=nearest] ArmorItems[3].id set value 'minecraft:golden_helmet'
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=find_set_sid_helmet_this_armor,limit=1,sort=nearest] armor.head
item modify entity @s weapon.mainhand gn:set_helmet
execute unless data entity @s SelectedItem.tag.display.Name run item modify entity @s weapon.mainhand gn:helmet_name

# Done:
item replace entity @e[type=armor_stand,tag=find_set_sid_helmet_this_armor,limit=1,sort=nearest] armor.head with leather_helmet
tellraw @s {"text":"You successfully changed your helmet!","color":"aqua"}
playsound minecraft:entity.player.levelup ambient @s

# Reset:
tag @e[type=armor_stand,tag=find_set_sid_helmet_this_armor] remove find_set_sid_helmet_this_armor
