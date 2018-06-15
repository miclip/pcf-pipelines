#!/bin/bash
set -eu

echo "Executing the script now"

ls -ltr

#tar -xvf ./winfs-injector-0.8.0.zip
#chmod 700 winfs-injector-linux
cd pivnet-winfs-injector
tar -xvf ./winfs-injector-0.8.0.zip
chmod 700 winfs-injector-linux

./winfs-injector-linux --input-tile ../../pas-windows-2.1.6-build.1.pivotal --output-tile ../../pas-windows-2.1.6.injected.pivotal
