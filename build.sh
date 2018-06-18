#!/bin/bash

pushd debian
packer build -only=virtualbox-iso -var 'name=fwdev' debian-9.4-amd64.json 
popd

pushd builds
#vagrant box add fwdev.virtualbox.box  --name fwdev
popd