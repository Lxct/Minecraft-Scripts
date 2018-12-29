bash /srv/scripts/stop.sh
cd /srv/minecraft/
gdrive download 1HGHJrSL3rBi7DDsC5DLLVkQi9aNvlqYU
echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Backup restore >> /srv/scripts/logs.txt
sleep 5
bash /srv/scripts/start.sh
