execute as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] at @s run summon armor_stand ^ ^ ^-1 {CustomName:'{"text":"bomb"}'}
execute at @e[type=armor_stand] run data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1,distance=..10] Summoner set from entity @e[type=armor_stand,limit=1,distance=..10,sort=nearest] UUID
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] at @s facing entity @e[type=irons_spellbooks:summoned_zombie,limit=1,sort=nearest] feet run tp ~ ~ ~
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] run cast @s sacrifice
kill @e[type=minecraft:armor_stand,name="bomb"]
scoreboard players set @s zom_explo_near_bool 0



