echo $* > /srv/tmp/cmd
screen -S minecraft -p 0 -X stuff "$(< /srv/tmp/cmd)^M"
more /srv/tmp/cmd
> /srv/tmp/cmd
tail -3 /srv/minecraft/logs/latest.log
