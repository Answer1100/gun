#在一隻殭屍後面招喚隱形的盔甲架
execute as @e[type=irons_spellbooks:summoned_zombie,name="zombie cannon",limit=1] at @s run summon armor_stand ^ ^ ^-1 {CustomName:'{"text":"bomb"}'}
#設定殭屍的summoner是那個盔甲架
execute at @e[type=armor_stand] run data modify entity @e[type=irons_spellbooks:summoned_zombie,limit=1,distance=..10] Summoner set from entity @e[type=armor_stand,limit=1,distance=..10,sort=nearest] UUID
#轉盔甲架的視角
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] at @s facing entity @e[type=irons_spellbooks:summoned_zombie,limit=1,sort=nearest] feet run tp ~ ~ ~
execute at @e[type=irons_spellbooks:summoned_zombie] as @e[type=minecraft:armor_stand,distance=..10,name="bomb"] run cast @s sacrifice
kill @e[type=minecraft:armor_stand,name="bomb"]
scoreboard players set @s zom_explo_near_bool 0
#只是這個其實還算未完成品，好一點的做法應該是要先讓離玩家最近的一隻殭屍上一個tag，然後後面判斷type=那個殭屍加上那個tag比較好，阿這邊就你改喔!!!!!!
#然後還有一個問題，就是其實這些殭屍不會主動打人，他的summoner要先有東西才會去打人


