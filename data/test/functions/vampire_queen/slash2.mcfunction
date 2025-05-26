execute at @a as @e[type=minecraft:zombie,distance=..10] if predicate test:chance3 function test:vampire_queen/move
execute at @a as @e[type=minecraft:zombie,distance=..10] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:zombie,distance=..10] run cast @s blood_slash
scoreboard players set @s vampire_distance_1_slash 0

execute if predicate test:chance5 run scoreboard players set @p vampire_distance_1_slash 64
execute if predicate test:chance6 run scoreboard players set @p vampire_distance_1_slash 112