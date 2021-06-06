#!/bin/bash

location="${1:-$'uksouth'}"
fileName="${2:-$'./ResourceGroup/resource-group-template.json'}"
parameter="${3:-$'./ResourceGroup/resource-group-parameters.json'}"

echo "Location=${location}"
echo "Template File Path=${fileName}"
echo "Parameter File Path=${parameter}"

az deployment sub create --location ${location} --template-file ${fileName} --parameters ${parameter}