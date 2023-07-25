say @s

# Search:
tag @s add find_sid_helmet_this
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_sid_helmet_this] sid run item replace entity @s armor.head from entity @p[tag=find_sid_helmet_this] weapon.mainhand
execute as @e[type=armor_stand,tag=sid,tag=gn,tag=holder] if score @s sid = @p[tag=find_sid_helmet_this] sid run say @s
tag @s remove find_sid_helmet_this

# Done:
item modify entity @s weapon.mainhand gn:reset_nbt
tellraw @s {"text":"You successfully stored your helmet!","color":"aqua"}
playsound minecraft:entity.player.levelup ambient @s
