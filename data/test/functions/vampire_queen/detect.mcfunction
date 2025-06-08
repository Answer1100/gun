
execute at @a as @e[type=zombie,distance=..10,name="懶惰的吸血鬼"] if predicate test:chance2 run scoreboard players add @a[distance=..5] vampire_distance_1_slash 1
execute at @a[scores={vampire_distance_1_slash=124..125}] at @e[type=zombie,distance=..10,name="懶惰的吸血鬼"] run particle minecraft:witch ~ ~ ~ 1 1 1 0.01 100 normal
execute if predicate test:chance3 as @a[scores={vampire_distance_1_slash=128..135}] run function test:vampire_queen/slash1
execute if predicate test:chance2 as @a[scores={vampire_distance_1_slash=128..135}] run function test:vampire_queen/slash2
execute if predicate test:chance as @a[scores={vampire_distance_1_slash=128..135}] run function test:vampire_queen/slash3


execute at @a as @e[type=irons_spellbooks:summoned_zombie,distance=..5,name="zombie cannon"] run scoreboard players add @p zom_explo_near 1
execute as @a[scores={zom_explo_near=200..}] run function test:fly_zombie
execute as @a[scores={zom_explo_near_bool=1,zom_explo_near=3..5}] run function test:near_explo

#這邊是寫壞掉的東西，所以不用管
execute at @a as @e[type=zombie,distance=10..25,name="懶惰的吸血鬼"] run scoreboard players add @p vampire_distance_longhand 2
execute as @a[scores={vampire_distance_longhand=1..}] run scoreboard players remove @s vampire_distance_longhand 1



execute at @a if entity @e[type=minecraft:zombie,name="懶惰的吸血鬼",distance=0.1..10] if predicate test:chance3 run effect give @a[nbt={HurtTime:9s}] attributeslib:bleeding 3
execute at @a if entity @e[type=minecraft:zombie,name="懶惰的吸血鬼",distance=0.01..10] if predicate test:chance5 run effect give @e[type=minecraft:zombie,name="懶惰的吸血鬼",distance=..10] instant_damage 1 0
#summon zombie ~ ~ ~ {Health:150f,CustomName:'{"text":"懶惰的吸血鬼"}',Attributes:[{Name:generic.max_health,Base:150},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.32},{Name:"attributeslib:life_steal",Base:1},{Name:"forge:entity_reach",Base:1}]}

#不是吸血鬼的東西
execute as @a[scores={time_counting=1..20}] run scoreboard players add aaa time_counting 1
execute if score aaa time_counting matches 6 run cast shigeno5646 icicle
execute if score aaa time_counting matches 6 run scoreboard players set aaa time_counting 1