#!/bin/bash

# Usage: ./minio-upload my-bucket my-file.zip

bucket="fileshare"
file="/root/ansible-rolebook/netbox/tests/test.yml"

host=minio.addc.local:9000
s3_key=minio
s3_secret=miniostorage

resource="/${bucket}/${file}"
content_type="application/octet-stream"
date=`date -R`
_signature="PUT\n\n${content_type}\n${date}\n${resource}"
signature=`echo -en ${_signature} | openssl sha1 -hmac ${s3_secret} -binary | base64`
# echo $signature
curl -X PUT -T "${file}" \
          -H "Host: ${host}" \
          -H "Date: ${date}" \
          -H "Content-Type: ${content_type}" \
          -H "Authorization: AWS ${s3_key}:${signature}" \
          http://${host}${resource}