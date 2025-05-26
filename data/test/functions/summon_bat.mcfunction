scoreboard players set @s distance_summon_bat 0
execute at @a as @e[type=minecraft:zombie,distance=..30,name="殭屍招喚術士",limit=1] at @s run summon bat ~ ~ ~ {CustomName:'{"text":"annoy bat","color":"red"}'}
