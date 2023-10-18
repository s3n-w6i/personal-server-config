#!/bin/sh
echo Injecting Secrets
export IDM_ADMIN_PASSWORD=$(cat /run/secrets/ocis_idm-admin-password)
/usr/bin/ocis init || true
/usr/bin/ocis server