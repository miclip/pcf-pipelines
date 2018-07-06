#!/bin/bash
set -eu

echo "Entering Build Injected PASW Task"

#Unzip the WinFS Injector
cd pivnet-winfs-injector
unzip "*winfs*"
chmod 700 winfs-injector-linux

ls -ltr
#Find the original tile
cd ../pivnet-pasw
FILE_PATH=`find . -name *.pivotal | sort | head -1`

cd ..

ls -ltr

#Run the injector with the input as the original tile and output the winfs-injected tile
#./winfs-injector-linux --input-tile ../pivnet-pasw/$FILE_PATH --output-tile ../pasw-injected/$FILE_PATH

#ls -ltr ../pasw-injected
