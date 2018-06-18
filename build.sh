#!/bin/bash

pushd debian
packer build -only=virtualbox-iso debian-9.4-amd64.json -var 'name=fwdev'
popd

pushd builds
vagrant box add fwdev.virtualbox.box  --name fwdev
popd