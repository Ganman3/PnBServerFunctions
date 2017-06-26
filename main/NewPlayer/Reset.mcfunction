scoreboard objectives remove id
scoreboard objectives add id dummy

scoreboard players set @a id 0
scoreboard players set @e[name=Marker] id 0
#scoreboard players set @a Selected 0
#scoreboard players set @a destrid1 0
scoreboard objectives remove armortm

scoreboard players set @e[type=armor_stand,name=Marker] Selected 0
scoreboard players set @a ServerTime 0
kill @e[type=armor_stand,name=Marker]
scoreboard players set @a Tried 0


scoreboard players add @e[type=armor_stand,name=Marker] Selected 0
scoreboard players add @a Selected 0
scoreboard objectives add armortm stat.playOneMinute
scoreboard players set @a armortm 0
scoreboard objectives setdisplay sidebar.team.green Selected
scoreboard players set @a NewPlayer 0
scoreboard players set @e[name=Marker] NewPlayer 0
scoreboard players set NextPlayer id 1
scoreboard players set NextMarker id 1
scoreboard objectives setdisplay sidebar.team.green