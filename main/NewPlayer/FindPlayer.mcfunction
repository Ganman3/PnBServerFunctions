function main:NewPlayer/Reset if @p[score_ServerTime_min=250]
scoreboard players set @r[type=armor_stand,name=Marker,score_Selected=0,score_Found=0,score_Discounted=0,c=1] Selected 1
scoreboard players set @e[type=armor_stand,name=Marker,score_Selected=0,score_Found=0] Discounted 1
scoreboard players operation @e[name=Marker,type=armor_stand,score_Selected_min=1,score_destrid1=0,score_destrid1_min=0,score_Found=0] destrid1 = @e[name=Marker,type=armor_stand,score_Selected_min=1,score_destrid1=0,score_destrid1_min=0,score_Found=0] id
scoreboard players set @p[score_Discounted=0,score_Found=0,score_Tried=0,score_Selected=0,c=1] Selected 1
scoreboard players set @a[score_Found=0,score_Tried=0,score_Selected=0] Discounted 1
function main:NewPlayer/Restart unless @p[score_Selected_min=1]
scoreboard players operation @p[score_Selected_min=1,score_destrid1=0,score_destrid1_min=0] destrid1 = @p[score_Selected_min=1,score_destrid1=0,score_destrid1_min=0] id
#tellraw Ganman3 ["",{"selector":"@p[score_Selected_min=1]"},{"text":"'s initial id score is "},{"score":{"name":"@p[score_Selected_min=1]","objective":"destrid1"}}]
#tellraw Ganman3 ["",{"selector":"@e[type=armor_stand,name=Marker,score_Selected_min=1]"},{"text":"'s initial id score is "},{"score":{"name":"@e[type=armor_stand,name=Marker,score_Selected_min=1]","objective":"destrid1"}}]
scoreboard players operation @p[score_Selected_min=1] destrid1 -= @e[score_Selected_min=1,type=armor_stand,name=Marker] destrid1
scoreboard players set @p[score_destrid1=-1,score_Selected_min=1] Tried 1
scoreboard players set @p[score_destrid1_min=1,score_Selected_min=1] Tried 1
scoreboard players set @p[score_Selected_min=1,score_destrid1=0,score_destrid1_min=0] Found 1
scoreboard players operation @p[score_destrid1_min=1,score_Selected_min=1] destrid1 = @p[score_destrid1_min=1,score_Selected_min=1] id
scoreboard players operation @p[score_destrid1=-1,score_Selected_min=1] destrid1 = @p[score_destrid1=-1,score_Selected_min=1] id
scoreboard players operation @e[score_Selected_min=1,type=armor_stand,name=Marker] destrid1 = @p[score_Selected_min=1] destrid1
tp @e[name=Marker,type=armor_stand,score_Selected_min=1,score_destrid1=0,score_destrid1_min=0,c=1] @p[score_destrid1=0,score_destrid1_min=0,score_Selected_min=1]

scoreboard players set @e[type=armor_stand,name=Marker,score_Selected_min=1,score_destrid1=0,score_destrid1_min=0] Found 1
scoreboard players operation @e[type=armor_stand,name=Marker,score_destrid1_min=1,score_Selected_min=1] destrid1 = @e[type=armor_stand,name=Marker,score_destrid1_min=1,score_Selected_min=1] id
scoreboard players operation @e[type=armor_stand,name=Marker,score_destrid1=-1,score_Selected_min=1] destrid1 = @e[type=armor_stand,name=Marker,score_destrid1_min=1,score_Selected_min=1] id

execute @e[score_Found_min=1,score_Selected_min=1,type=armor_stand,name=Marker] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Marker] Discounted 0
execute @e[score_Found_min=1,score_Selected_min=1,type=armor_stand,name=Marker] ~ ~ ~ scoreboard players set @a Tried 0
execute @e[score_Found_min=1,score_Selected_min=1,type=armor_stand,name=Marker] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Marker,score_Selected_min=1] Selected 0
scoreboard players set @a[score_Selected_min=1,score_Selected=1] Selected 0
scoreboard players set @a[score_Discounted_min=1] Discounted 0

