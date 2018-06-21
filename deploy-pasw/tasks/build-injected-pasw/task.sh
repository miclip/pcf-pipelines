#!/bin/bash
set -eu

echo "Executing the script now"

ls -ltr

#tar -xvf ./winfs-injector-0.8.0.zip
#chmod 700 winfs-injector-linux
cd pivnet-winfs-injector
ls -ltr
unzip ./winfs-injector-0.8.0.zip
chmod 700 winfs-injector-linux

FILE_PATH=`find ../pivnet-pasw -name *.pivotal | sort | head -1`

./winfs-injector-linux --input-tile ../pivnet-pasw/$FILE_PATH --output-tile ../pasw-injected/pas-windows-2.1.6.injected.pivotal
