#!/bin/bash
screen -S minecraft -p 0 -X stuff "$(< /srv/minecraft/cmd/cmd.tmp)^M"
echo [`date +"%m/%d/%Y|%H:%M:%S"`] $(< /srv/minecraft/cmd/cmd.tmp)  >> /srv/scripts/rconfix.log
rm /srv/minecraft/cmd/cmd.tmp
