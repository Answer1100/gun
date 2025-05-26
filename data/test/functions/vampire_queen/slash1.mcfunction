scoreboard players set @s skill_select 1
execute at @a[limit=2] run summon armor_stand ^-3 ^1 ^3 {CustomName:'{"text":"slash"}'}
execute at @a as @e[type=minecraft:armor_stand,distance=..10,name="slash"] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:armor_stand,distance=..10,name="slash"] run cast @s blood_slash
kill @e[type=minecraft:armor_stand,name="slash"]
scoreboard players set @s vampire_distance_1_slash 0


execute if predicate test:chance2 run scoreboard players set @p vampire_distance_1_slash 64
execute if predicate test:chance6 run scoreboard players set @p vampire_distance_1_slash 112