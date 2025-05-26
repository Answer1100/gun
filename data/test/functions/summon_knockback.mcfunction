scoreboard players set @s detect_knock_summon 0
execute at @a as @e[type=minecraft:zombie,distance=..10,name="殭屍招喚術士"] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:zombie,distance=..10,name="殭屍招喚術士",limit=1] run cast @s gust