#!/usr/bin/env sh

mkdir temp_softwares

cd temp_softwares

echo "files will be donloaded from web"

echo "Downloading openjdk-8 from - https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz"
wget --no-verbose https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz

echo "Downloading scala from - https://downloads.lightbend.com/scala/2.12.11/scala-2.12.11.tgz"
wget --no-verbose https://downloads.lightbend.com/scala/2.12.11/scala-2.12.11.tgz