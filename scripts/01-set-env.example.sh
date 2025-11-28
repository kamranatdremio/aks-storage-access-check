#!/usr/bin/env bash
# Example environment variable file
export AKS_RG="your-resource-group"
export AKS_CLUSTER="your-aks-name"
export STORAGE_ACCOUNT="yourstorageaccount"
export STORAGE_ACCOUNT_KEY="yourstoragekey"
export STORAGE_CONTAINER="yourcontainer"
export NODEPOOL_NAME="dremio"
export STORAGE_CONN_STR="DefaultEndpointsProtocol=https;AccountName=${STORAGE_ACCOUNT};AccountKey=${STORAGE_ACCOUNT_KEY};EndpointSuffix=core.windows.net"
