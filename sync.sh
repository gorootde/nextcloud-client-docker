#!/bin/ash

DATADIR=/data

echo "Datadir: $DATADIR"
echo "User: $NEXTCLOUD_USER"
echo "Password: ${#NEXTCLOUD_PASSWORD}"
echo "Url: $NEXTCLOUD_URL"

if [ -d $DATADIR ]
then
    echo "Creating $DATADIR"
    mkdir -p $DATADIR
fi

echo "Chown $DATADIR"
chown -R $USER:$USER $DATADIR

echo "Starting sync loop..."
while true
do
    nextcloudcmd --non-interactive --user $NEXTCLOUD_USER --password $NEXTCLOUD_PASSWORD /data $NEXTCLOUD_URL
    sleep $SYNC_SLEEP
done