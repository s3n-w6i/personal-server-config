#!/bin/sh
echo Injecting Secrets
export OCIS_JWT_SECRET=$(cat /run/secrets/ocis_jwt-secret)
export OCIS_TRANSFER_SECRET=$(cat /run/secrets/ocis_transfer-secret)
export OCIS_MACHINE_AUTH_API_KEY=$(cat /run/secrets/ocis_machine-auth-api-key)
export OCIS_SYSTEM_USER_ID=$(cat /run/secrets/ocis_storage-system-user-id)
export OCIS_SYSTEM_USER_API_KEY=$(cat /run/secrets/ocis_storage-system-api-key)
export IDM_ADMIN_PASSWORD=$(cat /run/secrets/ocis_idm-admin-password)
/usr/bin/ocis server