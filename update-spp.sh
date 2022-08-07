#!/bin/bash
# usage sh ./get-asset.sh [dev|prod] [local|remote] [assetId]
# defaults to [prod] [local] [null]
source ./common.sh

getTable ${1}

args="
    --table-name ${table}
    --key {\"pk\":{\"S\":\"spp\"}}
    --update-expression set capacity=:cap
    --expression-attribute-values {\":cap\":{\"N\":\"0\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb update-item ${args}
