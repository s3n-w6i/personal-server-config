#!/bin/sh
set -e

export WOPI_SECRET=$(cat /run/secrets/ocis_wopi_secret)
echo "${WOPI_SECRET}" > /etc/wopi/wopisecret

cp /etc/wopi/wopiserver.conf.dist /etc/wopi/wopiserver.conf
sed -i 's/wopiserver.owncloud.test/'${WOPISERVER_DOMAIN}'/g' /etc/wopi/wopiserver.conf

/app/wopiserver.py