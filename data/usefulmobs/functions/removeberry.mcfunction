## Executing as and at nearest berry item

# If one berry remaining, kill item entity 
kill @s[nbt={Item:{Count:1b}}]

# If more than one berry remaining, lower item count
execute if score @s BerryCount matches 1.. store result entity @s Item.Count byte 1 run scoreboard players operation @s BerryCount -= @p BerryCount
