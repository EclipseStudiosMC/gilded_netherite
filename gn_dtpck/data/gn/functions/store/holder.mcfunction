# @s is the player!

# Summon:
summon armor_stand 0 1000 0 {Tags:["gn","holder"],CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}]}

# Scores:
scoreboard players operation @s sid = global sid
tag @s add holder_this
execute as @e[type=armor_stand,limit=1,tag=!sid,tag=gn,tag=holder] run scoreboard players operation @s sid = @p[tag=holder_this] sid
tag @s remove holder_this
scoreboard players add global sid 1

# Tags:
execute as @e[type=armor_stand,limit=1,tag=!sid,tag=gn,tag=holder] run tag @s add sid
