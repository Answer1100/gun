execute at @a as @e[type=minecraft:zombie,distance=..10] at @s facing entity @p feet run tp @s ~ ~ ~ ~30 ~ 
execute at @a as @e[type=minecraft:zombie,distance=..10] run cast @s blood_step 1
effect clear @s minecraft:invisibility
