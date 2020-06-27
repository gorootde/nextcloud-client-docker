#!/bin/ash

DATADIR=/data

echo "Datadir: $DATADIR"
echo "User: $NEXTCLOUD_USERNAME"
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
    nextcloudcmd --non-interactive --user $NEXTCLOUD_USERNAME --password $NEXTCLOUD_PASSWORD /data $NEXTCLOUD_URL
    sleep $SYNC_SLEEP
done