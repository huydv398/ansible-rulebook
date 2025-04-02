#!/bin/bash
# Get date
backup_day=$(date +'%Y%m%d')
clean_day=$(date --date="3 day ago" +'%Y%m%d')


#echo $message

message="""\`[Backup Volume CEPH Daily
Count volume: numbervolume\`"""
curl -s \
-X POST \
https://api.telegram.org/bot$apiToken/sendMessage \
-d text="$message" \
-d chat_id=$chatId \
-d parse_mode=markdown