#!/bin/bash
set -eu

echo "Entering Build Injected PASW Task"

#Unzip the WinFS Injector
cd pivnet-winfs-injector
unzip "*winfs*"
chmod 700 winfs-injector-linux

#Find the original tile
FILE_PATH=`find ../pivnet-pasw -name *.pivotal | sort | head -1`

#Run the injector with the input as the original tile and output the winfs-injected tile
./winfs-injector-linux --input-tile ../pivnet-pasw/$FILE_PATH --output-tile ../pasw-injected/$FILE_PATH

ls -ltr pasw-injected 
