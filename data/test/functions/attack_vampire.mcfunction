scoreboard players set @s detect_vampire 0
execute at @a as @e[type=minecraft:zombie,distance=..10,name="吸血鬼"] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:zombie,distance=..10,name="吸血鬼"] run cast @s blood_slash