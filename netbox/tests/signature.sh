# s3_resource=""
# content_type=""
# date_value=""
# aws_secret_access_key=""

# string_to_sign="PUT\n\n${content_type}\n${date_value}\n${s3_resource}"
# signature=`echo -en ${string_to_sign} | openssl sha1 -hmac ${aws_secret_access_key} -binary | base64`


#!/bin/sh

FILE=/root/ansible-rolebook/netbox/tests/test.yml

S3_ACCESS_KEY="qNuJwIKlKPl0b45qQoJF"
S3_SECRET_KEY="Y4IL8WIj7wZTyrebXuOytaplGKAi3n8NqBJqRgQQ"
S3_BUCKET="fileshare"
S3_REGION="<REGION>"

curl --progress-bar -X PUT \
    --user "minio":"miniostorage" \
    --upload-file "/root/ansible-rolebook/netbox/tasks/16.win-upload-file-to-Nextcloud.yml" \
    http://minio.addc.local:9000