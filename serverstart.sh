#!/bin/bash
source ./config.sh
java -jar -server -Xms8g -Xmx16g -Xmn2G -Dfml.queryResult=confirm forge-$FORGEVERSION-universal.jar nogui
unset FORGEVERSION
