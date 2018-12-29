screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Suppression des items dans \",\"color\":\"aqua\"},{\"text\":\"5 minutes\",\"color\":\"green\"}]^M"
sleep 240
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Suppression des items dans \",\"color\":\"aqua\"},{\"text\":\"1 minute\",\"color\":\"green\"}]^M"
sleep 30
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Suppression des items dans \",\"color\":\"aqua\"},{\"text\":\"30 secondes\",\"color\":\"green\"}]^M"
sleep 20
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Suppression des items dans \",\"color\":\"aqua\"},{\"text\":\"10 secondes\",\"color\":\"green\"}]^M"
sleep 10
screen -S minecraft -p 0 -X stuff "execute as @e[type=minecraft:item] store result score @s data run data get entity @s Age^M"
screen -S minecraft -p 0 -X stuff "execute store result score #items data if entity @e[type=item,scores={data=1200..}]^M"
screen -S minecraft -p 0 -X stuff "kill @e[type=item,scores={data=1200..}]^M"
screen -S minecraft -p 0 -X stuff "kill @e[type=arrow]^M"
screen -S minecraft -p 0 -X stuff "kill @e[type=experience_orb]^M"
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] \",\"color\":\"aqua\"},{\"score\":{\"name\":\"#items\",\"objective\":\"data\"},\"color\":\"red\"},{\"text\":\" items supprimés.\",\"color\":\"aqua\"}]^M"
echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Serveur clear lag >> /srv/scripts/logs.txt
