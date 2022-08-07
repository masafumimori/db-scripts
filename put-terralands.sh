#!/bin/bash
# usage sh ./get-asset.sh [dev|prod] [local|remote] [assetId]
# defaults to [prod] [local] [null]
source ./common.sh

getTable ${1}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103246718\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/09adca4e-ca5a-47c3-8eaf-7c6fd2825309\"},\"positionX\":{\"N\":\"1\"},\"positionY\":{\"N\":\"0\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103352115\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/d76e190d-40d2-4568-9d6c-ef267ac5d790\"},\"positionX\":{\"N\":\"2\"},\"positionY\":{\"N\":\"0\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103538653\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/26f3c533-1cb2-4b25-b562-def877bc9bc3\"},\"positionX\":{\"N\":\"3\"},\"positionY\":{\"N\":\"0\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103539103\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/b4fbff4b-d4c7-4e8e-89ad-5185b558b20c\"},\"positionX\":{\"N\":\"0\"},\"positionY\":{\"N\":\"1\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103539452\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/36b3c2e4-faeb-4c6b-891c-804267e5c4ed\"},\"positionX\":{\"N\":\"1\"},\"positionY\":{\"N\":\"1\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103539709\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/f9760a3d-be37-44fe-a200-560d8a60f7c9\"},\"positionX\":{\"N\":\"2\"},\"positionY\":{\"N\":\"1\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103539893\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/3e2e1b08-b0f5-4eb7-8c04-4f17b12a6617\"},\"positionX\":{\"N\":\"3\"},\"positionY\":{\"N\":\"1\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103544737\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/4b0551d1-6cf6-45bb-891f-c7d72e8bf8d1\"},\"positionX\":{\"N\":\"0\"},\"positionY\":{\"N\":\"2\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}

args="
    --table-name ${table}
    --item {\"pk\":{\"S\":\"asset|103545411\"},\"symbol\":{\"S\":\"TRLD\"},\"offchainUrl\":{\"S\":\"https://images.terragrids.org/188a5bb6-66a8-4922-bb4c-c3a2edd0d765\"},\"positionX\":{\"N\":\"1\"},\"positionY\":{\"N\":\"2\"}}
    --return-consumed-capacity TOTAL"

addEndpointUrlArgs ${2}

echo ${args}
aws dynamodb put-item ${args}
