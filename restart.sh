screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"1 minute\",\"color\":\"green\"}]^M"
sleep 30
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"30 secondes\",\"color\":\"green\"}]^M"
sleep 18
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"10 secondes\",\"color\":\"green\"}]^M"
sleep 5
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"5 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"4 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"3 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "execute as @a run team join normal^M"
screen -S minecraft -p 0 -X stuff "save-all^M"
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"2 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"1 seconde\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage \",\"color\":\"aqua\"},{\"text\":\"imminent !\",\"color\":\"green\"}]^M"
screen -S minecraft -p 0 -X stuff "kick @a Votre serveur préféré est de retour après la pause pub !^M"
sleep 1
screen -S minecraft -p 0 -X stuff "minecraft:stop^M"
sleep 1
screen -S minecraft -p 0 -X stuff "$'\003'"
sleep 1
screen -S minecraft -p 0 -X stuff "^C"
echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Serveur restart >> /srv/scripts/logs.txt
sleep 5
bash /srv/scripts/start.sh
