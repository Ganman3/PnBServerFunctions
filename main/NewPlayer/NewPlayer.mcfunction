scoreboard players add @p NewPlayer 0
scoreboard players add @e[name=Marker,type=armor_stand] NewPlayer 0
function main:NewPlayer/Init if @p[score_NewPlayer=0]
function main:NewPlayer/FindPlayer if @p[score_armortm_min=20]