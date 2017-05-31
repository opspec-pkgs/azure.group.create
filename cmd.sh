#!/usr/bin/env bash

echo "logging in to azure"
az login -u "$username" -p "$password" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"

echo "checking for existing resource group"
if [ "$(az group show --name "$name")" != "" ]
then
    echo "found existing resource group"
else
    echo "resource group not found"
    echo "creating resource group"
    az group create \
    --name "$name" \
    --location "$location"
fi
