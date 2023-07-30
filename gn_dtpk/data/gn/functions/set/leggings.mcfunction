# Search:
tag @s add find_set_sid_leggings_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_set_sid_leggings_this] sid run tag @s add find_set_sid_leggings_this_armor
tag @s remove find_set_sid_leggings_this

# Setting:
data modify entity @e[type=armor_stand,tag=find_set_sid_leggings_this_armor,limit=1,sort=nearest] ArmorItems[1].id set value 'minecraft:golden_leggings'
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=find_set_sid_leggings_this_armor,limit=1,sort=nearest] armor.legs
item modify entity @s weapon.mainhand gn:set_leggings
execute unless data entity @s SelectedItem.tag.display.Name run item modify entity @s weapon.mainhand gn:leggings_name

# Done:
item replace entity @e[type=armor_stand,tag=find_set_sid_leggings_this_armor,limit=1,sort=nearest] armor.legs with leather_leggings
tellraw @s {"text":"You successfully changed your leggings!","color":"aqua"}
playsound minecraft:entity.player.levelup ambient @s

# Reset:
tag @e[type=armor_stand,tag=find_set_sid_leggings_this_armor] remove find_set_sid_leggings_this_armor
