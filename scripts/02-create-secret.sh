#!/usr/bin/env bash
set -euo pipefail

SECRET_NAME="storage-connstr"
SECRET_KEY="AZURE_STORAGE_CONNECTION_STRING"

kubectl delete secret "$SECRET_NAME" --ignore-not-found
kubectl create secret generic "$SECRET_NAME" --from-literal="${SECRET_KEY}=${STORAGE_CONN_STR}"

echo "Secret created."
