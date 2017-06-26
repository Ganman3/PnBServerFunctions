scoreboard objectives add id dummy
scoreboard players add @a[score_NewPlayer=0] id 0

scoreboard players add @p[score_NewPlayer=0,c=1] storedid 0
scoreboard players add @p[score_NewPlayer=0] destrid1 0
scoreboard players add @p[score_NewPlayer=0,c=1] destrid2 0
scoreboard players add @p[score_NewPlayer=0,c=1] armortm 0
scoreboard players add @p[score_NewPlayer=0,c=1] Tried 0
execute @e[name=Origin,type=armor_stand] ~ ~ ~ summon armor_stand ~ ~1 ~ {CustomName:"Marker",NoGravity:1b,Marker:1b,Invulnerable:1,Invisible:1b,NoBasePlate:1,DisabledSlots:2039583}
scoreboard teams join noCollision @e[type=armor_stand,name=Marker]
scoreboard players add @e[name=Marker] id 0
scoreboard players add @e[name=Marker] storedid 0
scoreboard players add @e[name=Marker] destrid1 0
scoreboard players add @e[name=Marker] destrid2 0
scoreboard players add @p[score_NewPlayer=0] Selected 0
scoreboard players add @e[name=Marker] Selected 0
scoreboard players add @p[score_NewPlayer=0] Tried 0
scoreboard players add @p[score_NewPlayer=0] Found 0
scoreboard players add @e[name=Marker] Found 0
scoreboard players add @e[name=Marker] Discounted 0
scoreboard players add @p[score_NewPlayer=0] Discounted 0
scoreboard players add @p[score_NewPlayer=0] FindPlayer1 0
scoreboard players add @p[score_NewPlayer=0] ServerTime 0
#scoreboard players set @a id 0
#scoreboard players set @e[type=armor_stand,name=Marker] id 0
scoreboard players set @e[type=armor_stand,name=Marker,score_NewPlayer=0,c=1] NewPlayer 1
scoreboard players set @p[score_NewPlayer=0,c=1] NewPlayer 1

scoreboard players operation @p[score_id=0,score_id_min=0,c=1] id = NextPlayer id
scoreboard players operation @e[score_id=0,score_id_min=0,type=armor_stand,name=Marker,c=1] id = NextMarker id
scoreboard players add NextPlayer id 1
scoreboard players add NextMarker id 1





