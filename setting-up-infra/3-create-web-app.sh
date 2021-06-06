#!/bin/bash

resourceGroup="${1}"
fileName="${2:-$'./WebApp/web-app-template.json'}"
parameter="${3:-$'./WebApp/web-app-parameters.json'}"

if [ -z "${resourceGroup}" ]; then
    echo
    echo -e '\033[31m Please specify resource group name in cli argument'
    echo
    exit 
fi

echo "resourceGroup=${resourceGroup}"
echo "Template File Path=${fileName}"
echo "Parameter File Path=${parameter}"

az deployment group create --resource-group ${resourceGroup} --template-file ${fileName} --parameters ${parameter}
