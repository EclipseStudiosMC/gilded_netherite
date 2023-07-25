# Message:
tellraw @s ["",{"text":"---------------------------------------------------","color":"dark_aqua"},"\n","\n",{"text":"                            INFO","bold":true,"color":"dark_aqua"},"\n","\n",{"text":"  •","color":"dark_aqua"},{"text":" /trigger Store<ArmorPiece> ","color":"aqua"},{"text":"---> ","color":"dark_aqua"},{"text":"Use this to save the enchants, name and lore that your armor piece has. Only works if you hold the same netherite armor type as <ArmorPiece>.","color":"aqua"},"\n","\n",{"text":"  •","color":"dark_aqua"},{"text":" /trigger Set<ArmorPiece> ","color":"aqua"},{"text":"---> ","color":"dark_aqua"},{"text":"Use this to put the stored data to your gilded armor. Only works if you hold the same gilded armor type piece as <ArmorPiece>.","color":"aqua"},"\n","\n",{"text":"---------------------------------------------------","color":"dark_aqua"}]

# Playsound:
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2

# Reset:
scoreboard players set @s Info 0
