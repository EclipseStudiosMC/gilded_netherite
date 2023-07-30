# Enable /trigger for all players:
scoreboard players enable @a StoreHelmet
scoreboard players enable @a SetHelmet
scoreboard players enable @a StoreChestplate
scoreboard players enable @a SetChestplate
scoreboard players enable @a StoreLeggings
scoreboard players enable @a SetLeggings
scoreboard players enable @a StoreBoots
scoreboard players enable @a SetBoots
scoreboard players enable @a Info
scoreboard players enable @a Creds

# If /trigger:
execute as @a[scores={StoreHelmet=1..}] at @s run function gn:check/store/helmet
execute as @a[scores={SetHelmet=1..}] at @s run function gn:check/set/helmet

execute as @a[scores={StoreChestplate=1..}] at @s run function gn:check/store/chestplate
execute as @a[scores={SetChestplate=1..}] at @s run function gn:check/set/chestplate

execute as @a[scores={StoreLeggings=1..}] at @s run function gn:check/store/leggings
execute as @a[scores={SetLeggings=1..}] at @s run function gn:check/set/leggings

execute as @a[scores={StoreBoots=1..}] at @s run function gn:check/store/boots
execute as @a[scores={SetBoots=1..}] at @s run function gn:check/set/boots

execute as @a[scores={Info=1..}] at @s run function gn:info/info
execute as @a[scores={Creds=1..}] at @s run function gn:info/creds

# Sid:
execute as @e if score global sid <= @s[scores={sid=0..}] sid run scoreboard players add global sid 1
execute as @a unless score @s sid matches 0.. at @s run function gn:store/holder
