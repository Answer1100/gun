
execute as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] at @s facing entity @p feet run tp ~ ~ ~
execute positioned 0 0.3 0 rotated as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] run tp @e[type=area_effect_cloud,limit=1] ^ ^ ^2
data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1] Motion set from entity @e[type=minecraft:area_effect_cloud,limit=1] Pos
scoreboard players set @s zom_explo_near 0
scoreboard players set @s zom_explo_near_bool 1
