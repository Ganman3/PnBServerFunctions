scoreboard players add @a Announcements 0
tellraw @a[score_Announcements_min=12000,score_Announcements=12000] ["",{"text":"[World of Raalekh]","bold":true,"italic":true,"color":"red"},{"text":" Website work is ongoing. Until our website is fully contructed, you can find all information concerning the server on Steam at ","italic":true,"color":"light_purple"},{"text":"http://steamcommunity.com/groups/pnbgaming#","italic":true,"color":"gold","clickEvent":{"action":"open_url","value":"http://steamcommunity.com/groups/pnbgaming#"}}]
tellraw @a[score_Announcements_min=6000,score_Announcements=6000] ["",{"text":"[World of Raalekh]","bold":true,"italic":true,"color":"red"},{"text":" Scheduled server maintenance happens weekly- Tuesday from 3-6p CDT. This week, we will be focusing on setting up a restart system to minimize lag. Additional maintenance will take place Wednesday, during which time we will be importing structures from previous servers.","italic":true,"color":"light_purple"}]
#Comment
scoreboard players set @a[score_Announcements_min=19000,score_Announcements=19000] Announcements 0

