#!/bin/sh
echo Injecting Secrets
export IDM_ADMIN_PASSWORD=$(cat /run/secrets/ocis_idm-admin-password)
/usr/bin/ocis init --admin-password ${IDM_ADMIN_PASSWORD} || true
/usr/bin/ocis server