#!/bin/bash
# Get date
backup_day=$(date +'%Y%m%d')
clean_day=$(date --date="3 day ago" +'%Y%m%d')

apiToken='7895711577:AAG1IX5clX5hmQ_Z3jvDlpYgP3cSxj2kc_k'
chatId='750878537'
#echo $message

message="""\`[Backup Volume CEPH Daily
Count volume: numbervolume\`"""
curl -s \
-X POST \
https://api.telegram.org/bot$apiToken/sendMessage \
-d text="$message" \
-d chat_id=$chatId \
-d parse_mode=markdown