#!/bin/bash

# Local mountpoint. Will create it if it does not exist
mntpoint="/mnt/disks/rclone_mount/"

# Remote share
remoteshare="gdrive-rclone-config-name:" # point this to the crypt one if using encryption

###################################

mkdir -p $mntpoint
rclone mount --allow-other --read-only --buffer-size 500M --dir-cache-time 24h --poll-interval 30s --rc --timeout 1h --log-file=/var/log/rclone_mount.log --stats 5m -v $remoteshare $mntpoint &
