#!/usr/bin/env sh

mkdir temp_softwares

cd temp_softwares

echo "files will be donloaded from web"

echo "Downloading spark from - https://www.apache.org/dyn/closer.lua/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz"
wget --no-verbose https://www.apache.org/dyn/closer.lua/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz