if ! screen -list | grep -q "minecraft"; then
    bash /srv/scripts/starter.sh
fi
