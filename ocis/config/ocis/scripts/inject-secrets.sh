#!/bin/sh
echo Injecting Secrets
export OCIS_JWT_SECRET=$(cat /run/secrets/ocis_jwt-secret)
/usr/bin/ocis server