scoreboard players set @s distance_attach_bat 0
execute at @a as @e[type=minecraft:bat,distance=..40,limit=1,sort=nearest] run tp ^ ^ ^-2
execute at @a as @e[type=minecraft:bat,distance=..40,limit=1] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:bat,distance=..10] run cast @s root 1
execute at @a as @e[type=minecraft:bat,distance=..40,limit=1,sort=nearest] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:bat,distance=..10] run cast @s blood_needles 1
execute at @a as @e[type=minecraft:bat,distance=..10,sort=nearest,limit=1] run damage @s 2