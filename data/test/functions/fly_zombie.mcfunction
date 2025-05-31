#轉視角
execute as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] at @s facing entity @p feet run tp ~ ~ ~
#以殭屍轉過的視角，然後tp的位置從0,0.3,0為基準點，讓area_effect_cloud前進殭屍視角的兩格
execute positioned 0 0.3 0 rotated as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] run tp @e[type=area_effect_cloud,limit=1] ^ ^ ^2
#把那個area_effect_cloud的位置替換到僵屍的motion這樣不就是它會往人的方向快速的以motion2的速度前進就這樣
data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1] Motion set from entity @e[type=minecraft:area_effect_cloud,limit=1] Pos
scoreboard players set @s zom_explo_near 0
scoreboard players set @s zom_explo_near_bool 1
