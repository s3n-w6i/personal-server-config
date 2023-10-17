#!/bin/sh
echo Injecting Secrets
export OCIS_JWT_SECRET=$(cat /run/secrets/ocis_jwt-secret)
export OCIS_TRANSFER_SECRET=$(cat /run/secrets/ocis_transfer-secret)
export OCIS_MACHINE_AUTH_API_KEY=$(cat /run/secrets/ocis_machine-auth-api-key)
/usr/bin/ocis server