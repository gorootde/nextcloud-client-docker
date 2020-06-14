#!/bin/ash

if [ -d /data ]
then
    mkdir -p /data
fi

chown -R $USER:$USER /data

while true
do
    nextcloudcmd --non-interactive -u $NEXTCLOUD_USER -p $NEXTCLOUD_PASSWORD /data $NEXTCLOUD_URL
    sleep $SYNC_SLEEP
done