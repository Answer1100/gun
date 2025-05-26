execute at @a[scores={detect_vampire_slash=200..205}] run summon armor_stand ^5 ^1 ^ {CustomName:'{"text":"slash"}'}
execute at @a[scores={detect_vampire_slash=200..205}] run summon armor_stand ^-5 ^1 ^ {CustomName:'{"text":"slash"}'}
execute at @a as @e[type=minecraft:armor_stand,distance=..10,name="slash"] at @s facing entity @p feet run tp ~ ~ ~
execute at @a as @e[type=minecraft:armor_stand,distance=..10,name="slash"] run cast @s blood_slash
kill @e[type=minecraft:armor_stand,name="slash"]
scoreboard players set @s detect_vampire_slash 0