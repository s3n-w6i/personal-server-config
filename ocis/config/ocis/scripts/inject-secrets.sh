#!/bin/sh
echo Init
IDM_ADMIN_PASSWORD=$(cat /run/secrets/ocis_idm-admin-password) && /usr/bin/ocis init --admin-password ${IDM_ADMIN_PASSWORD} || true
echo Starting server
/usr/bin/ocis server