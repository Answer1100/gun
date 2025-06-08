execute at @a as @e[type=minecraft:zombie,distance=..10,name="殭屍大法師"] run scoreboard players add @p distance 1
execute at @a[scores={distance=52}] at @e[type=minecraft:zombie,distance=..10,name="殭屍大法師"] run particle minecraft:witch ~ ~ ~ 1 1 1 0.01 100 normal
execute as @a[scores={distance=60..65}] run function test:attack


execute at @a as @e[type=minecraft:zombie,distance=..30,name="殭屍招喚術士"] run scoreboard players add @p distance_summon_bat 1
execute as @a[scores={distance_summon_bat=400..405}] run function test:summon_bat
execute at @a as @e[type=minecraft:zombie,distance=..4,name="殭屍招喚術士"] run scoreboard players add @p detect_knock_summon 1
execute as @a[scores={detect_knock_summon=34..40}] run function test:summon_knockback

execute at @a as @e[type=minecraft:bat,distance=..40,name="annoy bat"] run scoreboard players add @p distance_attach_bat 1
execute as @a[scores={distance_attach_bat=440..490}] run playsound alexscaves:gammaroach_step player @s ~ ~ ~ 100 1
execute as @a[scores={distance_attach_bat=500..505}] run function test:attack_bat


execute at @a as @e[type=minecraft:zombie,distance=..10,name="吸血鬼"] run scoreboard players add @p detect_vampire 1
execute at @a[scores={detect_vampire=54}] at @e[type=minecraft:zombie,distance=..10,name="吸血鬼"] run particle minecraft:witch ~ ~ ~ 1 1 1 0.01 100 normal
execute as @a[scores={detect_vampire=60..65}] run function test:attack_vampire
execute at @a as @e[type=minecraft:zombie,distance=..14,name="吸血鬼"] run scoreboard players add @p detect_vampire_slash 1
execute as @a[scores={detect_vampire_slash=200..205}] run function test:vampire_slash

execute at @a as @e[type=irons_spellbooks:summoned_zombie,distance=..5,name="炸彈冰"] run scoreboard players add @p explo_zom 2
execute as @a[scores={explo_zom=1..}] run scoreboard players remove @s explo_zom 1
execute as @a[scores={explo_zom=80..}] run function test:zombie_explo

#不用管他
execute store result bossbar minecraft:ccc value run scoreboard players get @a[limit=1,scores={summoner=1..}] summoner

#飛過來炸的那個
#execute at @a as @e[type=irons_spellbooks:summoned_zombie,distance=..25,name="zombie cannon"] run scoreboard players add @p zom_explo_near 1
#execute as @a[scores={zom_explo_near=40..}] run function test:fly_zombie
#execute as @a[scores={zom_explo_near_bool=1,zom_explo_near=12..14}] run function test:near_explo


#血壞偵測
execute at @a if entity @e[type=minecraft:zombie,name="血壞",distance=..10] if predicate test:chance2 run effect give @a[nbt={HurtTime:9s}] attributeslib:bleeding 3

#有幾個狀態的偵測
execute store result score "aaa" time_counting run data get entity @e[type=minecraft:zombie,limit=1] ActiveEffects
execute if score "aaa" time_counting matches 0 run bossbar set minecraft:ccc color white
execute if score "aaa" time_counting matches 1 run bossbar set minecraft:ccc color blue
execute if score "aaa" time_counting matches 2 run bossbar set minecraft:ccc color green
execute if score "aaa" time_counting matches 3 run bossbar set minecraft:ccc color pink
execute if score "aaa" time_counting matches 4 run bossbar set minecraft:ccc color purple
execute if score "aaa" time_counting matches 5 run bossbar set minecraft:ccc color red

#傷害偵測比較好的寫法
execute as @a if predicate test:hurttime run effect give @s strength 10 1

#箭矢反轉
execute at @e[type=minecraft:zombie,limit=1] run execute store result entity @e[type=minecraft:arrow,limit=1,distance=..5] Motion[0] double -2 run data get entity @e[type=minecraft:arrow,limit=1,distance=..5] Motion[0]
execute at @e[type=minecraft:zombie,limit=1] run execute store result entity @e[type=minecraft:arrow,limit=1,distance=..5] Motion[2] double -2 run data get entity @e[type=minecraft:arrow,limit=1,distance=..5] Motion[2]
execute at @e[type=minecraft:zombie,limit=1] run data modify entity @e[type=minecraft:arrow,limit=1,distance=..5] Motion[1] set value 0
execute at @e[type=minecraft:zombie,limit=1] run data modify entity @e[type=minecraft:arrow,limit=1,distance=..5] NoGravity set value 1b
execute at @e[type=minecraft:zombie,limit=1] as @e[type=minecraft:arrow,limit=1,distance=..5] at @s run tp @s ^ ^ ^-0.03