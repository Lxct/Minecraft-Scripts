yum -y update;
yum -y upgrade;
yum -y autoremove;
echo [`date +"%m/%d/%Y|%H:%M:%S"`] : Update générale >> /srv/scripts/logs.txt
