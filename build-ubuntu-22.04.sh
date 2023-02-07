#!/bin/bash

#echo "Building Ubuntu 20.04 LTS (Focal Fossa) template"

#packer build -var-file=var-ubuntu-20.04.json packer-ubuntu.json



#!/bin/bash

echo "Building Ubuntu 22.04 LTS (Jammy Jellyfish) template"

packer build -force -var-file=./clouds/var-megasp.json ubuntu-22.04.json