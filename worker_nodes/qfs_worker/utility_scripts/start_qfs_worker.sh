#!/bin/bash

mkdir $QFS_LOGS_DIR

# start the QFS chunk server
$QFS_HOME/bin/chunkserver $QFS_HOME/conf/Chunkserver.prp &> $QFS_LOGS_DIR/chunkserver.log &

# now do nothing and do not exit
while true; do sleep 3600; done