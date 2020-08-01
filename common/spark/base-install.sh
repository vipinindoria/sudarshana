#!/usr/bin/env sh

echo "RUNNING IN MODE - $1"
# shellcheck disable=SC1068
# shellcheck disable=SC1068
ONLINE="ON"
OFFLINE="OFF"

mkdir temp_tools && cd temp_tools

if [[ $ONLINE == $1 ]]
then
  echo "files will be donloaded from web"

  echo "Downloading openjdk-8 from - https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz"
  wget --no-verbose https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz

  echo "Downloading scala from - https://downloads.lightbend.com/scala/2.12.11/scala-2.12.11.tgz"
  wget --no-verbose https://downloads.lightbend.com/scala/2.12.11/scala-2.12.11.tgz

  echo "Downloading spark from - https://www.apache.org/dyn/closer.lua/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz"
  wget --no-verbose https://www.apache.org/dyn/closer.lua/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz

elif [[ $1 == $OFFLINE ]]
then
  echo "files will be copied from directory - $2"
  cp -r $2/* .
  echo "files copied succesfully!"
else
  echo "Please choose either $ONLINE or $OFFLINE"
fi