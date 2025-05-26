
data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1] Summoner set from entity @e[type=minecraft:blaze,limit=1] UUID
execute as @e[type=minecraft:blaze,limit=1] at @s facing entity @e[type=irons_spellbooks:summoned_zombie,limit=1] feet run tp ~ ~ ~
execute as @e[type=minecraft:blaze,limit=1] run cast @s sacrifice