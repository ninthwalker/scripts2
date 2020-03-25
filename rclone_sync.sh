#!/bin/bash

# Rclone sync

rclone -L --max-age 3M --checkers 10 --transfers 10 --bwlimit 3M copy /mnt/user/bfx/stuff gdrive-rclone-config-name:foldername --stats 5m -v --log-file=/tmp/rclone_sync.log &
# Also use this sometimes to limit what it uploads: --max-size 5G
