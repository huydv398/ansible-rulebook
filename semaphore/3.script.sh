#!/bin/bash
# Get date
backup_day=$(date +'%Y%m%d')
clean_day=$(date --date="3 day ago" +'%Y%m%d')


apiToken='6073261344:AAEWZ83zFaVYEXW_vAQB0jLiNyl2pmV-E5k'
chatId='-4101230458'

#echo $message

message="""\`[Backup Volume CEPH Daily
Count volume: numbervolume\`"""
curl -s \
-X POST \
https://api.telegram.org/bot$apiToken/sendMessage \
-d text="$message" \
-d chat_id=$chatId \
-d parse_mode=markdown