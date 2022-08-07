#!/bin/bash
# usage sh ./get-asset.sh [dev|prod] [local|remote] [assetId]
# defaults to [prod] [local] [null]
source ./common.sh

getTable ${1}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|${3}\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/09adca4e-ca5a-47c3-8eaf-7c6fd2825309\"},\"positionX\":{\"N\":\"1\"},\"positionY\":{\"N\":\"0\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}
