#!/usr/bin/env bash
set -euo pipefail

YAML_FILE="k8s/storage-access-test-pod.yaml"
POD_NAME="storage-access-test"

sed -e "s|{{STORAGE_CONTAINER_NAME}}|${STORAGE_CONTAINER}|g" \
    -e "s|{{NODEPOOL_NAME}}|${NODEPOOL_NAME}|g" \
    "$YAML_FILE" | kubectl apply -f -

kubectl get pod "$POD_NAME" -w
