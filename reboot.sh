screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"1 minute\",\"color\":\"green\"}]^M"
sleep 30
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"30 secondes\",\"color\":\"green\"}]^M"
sleep 20
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"10 secondes\",\"color\":\"green\"}]^M"
sleep 5
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"5 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"4 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"3 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "save-all^M"
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"2 secondes\",\"color\":\"green\"}]^M"
sleep 1
screen -S minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage dans \",\"color\":\"aqua\"},{\"text\":\"1 seconde\",\"color\":\"green\"}]^M"
sleep 1
screen -s minecraft -p 0 -X stuff "tellraw @a [\"\",{\"text\":\"[Alerte] Redémarrage \",\"color\":\"aqua\"},{\"text\":\"imminent !\",\"color\":\"green\"}]^M"
screen -S minecraft -p 0 -X stuff "kick @a Votre serveur préféré est de retour après la pause pub !^M"
screen -S minecraft -p 0 -X stuff "stop^M"
sleep 1
screen -S minecraft -X stuff $'\003'
sleep 1
echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Serveur reboot >> /srv/scripts/logs.txt
sleep 1
reboot
