# Search:
tag @s add find_sid_chestplate_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_sid_chestplate_this] sid run item replace entity @s armor.chest from entity @p[tag=find_sid_chestplate_this] weapon.mainhand
tag @s remove find_sid_chestplate_this

# Done:
item modify entity @s weapon.mainhand gn:reset_nbt
tellraw @s {"text":"You successfully stored your chestplate!","color":"aqua"}
playsound minecraft:entity.player.levelup ambient @s
