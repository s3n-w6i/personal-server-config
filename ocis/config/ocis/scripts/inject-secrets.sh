#!/bin/sh
echo Injecting Secrets
export IDM_ADMIN_PASSWORD=$(cat /run/secrets/ocis_idm-admin-password)
/usr/bin/ocis init
/usr/bin/ocis server