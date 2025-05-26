scoreboard objectives add time_counting dummy "time_counting"
scoreboard objectives add distance dummy
scoreboard objectives add distance_summon_bat dummy
scoreboard objectives add distance_attach_bat dummy
scoreboard objectives add detect_vampire dummy
scoreboard objectives add detect_vampire_slash dummy
scoreboard objectives add detect_knock_summon dummy
scoreboard objectives add cr_explo dummy
scoreboard objectives add explo_zom dummy
scoreboard objectives add summoner minecraft.mined:minecraft.spawner
bossbar set minecraft:ccc players @a
scoreboard objectives add zom_explo_near dummy
scoreboard objectives add zom_explo_near_bool dummy
bossbar set minecraft:ccc max 17
scoreboard objectives add vampire_distance_1_slash dummy
scoreboard objectives add skill_select dummy
scoreboard objectives add vampire_distance_longhand dummy

scoreboard players set @a detect_vampire 0
scoreboard players set @a distance 0
scoreboard players set @a distance_summon_bat 0
scoreboard players set @a distance_attach_bat 0
scoreboard players set @a detect_vampire_slash 0
scoreboard players set @a detect_knock_summon 0
scoreboard players set @a cr_explo 0
scoreboard players set @a explo_zom 0
scoreboard players set @a summoner 0
scoreboard players set @a zom_explo_near 0
scoreboard players set @a zom_explo_near_bool 0
scoreboard players set @a vampire_distance_1_slash 0
scoreboard players set @a skill_select 0
scoreboard players set @a vampire_distance_longhand 0


item replace entity @a armor.head with diamond_helmet{Unbreakable:1b}
item replace entity @a armor.chest with diamond_chestplate
item replace entity @a armor.feet with diamond_boots{Unbreakable:1b}
item replace entity @a armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @a container.0 with diamond_sword{Unbreakable:1b}
item replace entity @a container.1 with diamond_pickaxe{Unbreakable:1b}
item replace entity @a weapon.offhand with minecraft:shield{Unbreakable:1b}
item replace entity @a container.2 with cooked_beef 64
effect give @a night_vision infinite


#/execute store result score aaa time_counting run execute if entity @e test how many count