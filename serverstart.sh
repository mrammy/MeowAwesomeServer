#!/bin/bash
FORGEURL=forge-1.7.10-10.13.4.1492-1.7.10-universal.jar
#java -jar -server -Xmn2G -Xss4M -Xms4g -Xmx6g -XX:+UseLargePages -XX:+AggressiveOpts -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:+UseBiasedLocking -Xincgc -XX:MaxGCPauseMillis=10 -XX:SoftRefLRUPolicyMSPerMB=10000 -XX:+CMSParallelRemarkEnabled -XX:ParallelGCThreads=10 -Djava.net.preferIPv4Stack=true $FORGEURL nogui

java -jar -server -Xms8g -Xmx16g -Xmn2G $FORGEURL nogui
unset FORGEURL
