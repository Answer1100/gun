scoreboard players set @s distance 0
execute at @a as @e[type=minecraft:zombie,distance=..10,name="殭屍大法師"] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:zombie,distance=..10,name="殭屍大法師"] run cast @s blood_needles