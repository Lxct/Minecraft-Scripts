tar zcvf /srv/backup/backup.tar.gz /srv/minecraft/
gdrive update 1HGHJrSL3rBi7DDsC5DLLVkQi9aNvlqYU /srv/backup/backup.tar.gz
rm --force /srv/backup/backup.tar.gz

echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Backup générée >> /srv/scripts/logs.txt
