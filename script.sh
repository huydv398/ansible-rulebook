#!/bin/bash
# file="/root/ansible-rolebook/list"
# IFS=$';'
# for var in $(cat $file)
# do
# echo "var: $var"
# done

# while IFS= read -r line; do
#  arr+=("$line")
# done

# sử dụng vòng lặp while từ file 
while read p; do
  #IFS phân tách biến thành var1 và var2 từ $p
  IFS=$';' read -r var1 var2 <<< "$p"
  #chạy lệnh đồng bộ rsync từ máy chủ DA cũ
  rsync -avz --progress -e ssh /home/$var1/domains/$var2/public_html \
  root@103.154.62.123:/home/$var1/domains/$var2/

#   mkdir /home/$var1/domains/$var2/public_html
done < list.txt
