#!/usr/bin/env sh

mkdir temp_softwares

cd temp_softwares

echo "files will be donloaded from web"

echo "Downloading qfs from - https://s3.amazonaws.com/quantcast-qfs/qfs-debian-9-2.2.1-x86_64.tgz"
wget --no-verbose https://s3.amazonaws.com/quantcast-qfs/qfs-debian-9-2.2.1-x86_64.tgz