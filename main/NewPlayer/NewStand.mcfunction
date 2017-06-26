tell Ganman3 Hello
scoreboard players set @a[score_Tried_min=1] Tried 0
scoreboard players set @e[type=armor_stand,name=Marker,score_Discounted_min=1] Discounted 0
tp @e[type=armor_stand,name=Marker,score_Selected_min=1,score_Found_min=1] @p[score_Selected_min=1,score_Found_min=1]
scoreboard players set @p[score_Selected_min=1,score_Found_min=1] Selected 0
#scoreboard players set @e[type=armor_stand,name=Marker,score_Selected_min=1,score_Found_min=1] Selected 0