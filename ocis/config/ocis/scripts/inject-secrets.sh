#!/bin/sh
echo Injecting Secrets
export OCIS_JWT_SECRET=$(cat /run/secrets/ocis_jwt-secret)
export OCIS_TRANSFER_SECRET=$(cat /run/secrets/ocis_transfer-secret)
/usr/bin/ocis server