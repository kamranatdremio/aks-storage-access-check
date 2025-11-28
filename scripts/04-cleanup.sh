#!/usr/bin/env bash
set -euo pipefail

POD_NAME="storage-access-test"
SECRET_NAME="storage-connstr"

kubectl delete pod "$POD_NAME" --ignore-not-found

echo "Cleanup done."
