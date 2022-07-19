#!/bin/bash
cd ~/dynamodb
# use x86-64 arch Java instead of for arm64
# ref: https://stackoverflow.com/questions/66635424/dynamodb-local-setup-on-m1-apple-silicon-mac
~/downloads/zulu11.56.19-ca-jre11.0.15-macosx_x64/bin/java -Djava.library.path=./DynamoDBLocal_lib -jar ./DynamoDBLocal.jar -sharedDb
