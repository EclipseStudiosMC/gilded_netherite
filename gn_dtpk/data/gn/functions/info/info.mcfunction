# Message:
tellraw @s ["",{"text":"---------------------------------------------------","color":"dark_aqua"},"\n","\n",{"text":"                            INFO","bold":true,"color":"dark_aqua"},"\n","\n",{"text":"  This datapack adds the abiliy to craft Gilded Armor, but unfortunately all the enchants, the name and lore of your armor will be lost on crafting the armor, to fix this we need to store all of that before crafting it, to do that run the next commands as indicated:","color":"dark_aqua"},"\n","\n",{"text":"  •","color":"dark_aqua"},{"text":" /trigger Store<ArmorPiece> ","color":"aqua"},{"text":"---> ","color":"dark_aqua"},{"text":"Use this to save the enchants, name and lore that your armor piece has. Only works if you hold the same netherite armor type as <ArmorPiece>.","color":"aqua"},"\n","\n",{"text":"  •","color":"dark_aqua"},{"text":" /trigger Set<ArmorPiece> ","color":"aqua"},{"text":"---> ","color":"dark_aqua"},{"text":"Use this to put the stored data to your gilded armor. Only works if you hold the same gilded armor type piece as <ArmorPiece>.","color":"aqua"},"\n","\n",{"text":"  Still need more info? Don't forget to read the ","color":"dark_aqua"},{"text":"FAQ","underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/gna"}},{"text":"!","color":"dark_aqua"},"\n","\n",{"text":"---------------------------------------------------","color":"dark_aqua"}]

# Playsound:
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2

# Reset:
scoreboard players set @s Info 0
