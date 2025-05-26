execute at @a[scores={explo_zom=80..95}] as @e[type=irons_spellbooks:summoned_zombie,distance=..5,name="炸彈冰",limit=1] at @s run summon armor_stand ^ ^ ^-1 {CustomName:'{"text":"bomb"}'}
execute at @e[type=armor_stand] run data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1,distance=..3] Summoner set from entity @e[type=armor_stand,limit=1,distance=..3,sort=nearest] UUID
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] at @s facing entity @e[type=irons_spellbooks:summoned_zombie,limit=1,sort=nearest] feet run tp ~ ~ ~
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] run cast @s sacrifice
kill @e[type=minecraft:armor_stand,name="bomb"]
scoreboard players set @s explo_zom 0
#/summon irons_spellbooks:summoned_zombie ~ ~ ~ {Health:40f,CustomName:'{"text":"炸彈冰"}',Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.1}]}
#/give @p spawner{BlockEntityTag:{SpawnData:{entity:{id:"irons_spellbooks:summoned_zombie",Health:40f,CustomName:'{"text":"炸彈冰"}',Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.1}]}}}} 1