#!/bin/bash -x
#
# install DeepSea on local master (will be run as root)
#
zypper --non-interactive install --no-recommends make rpm
test -d DeepSea || git clone --depth 1 --branch susecon2017 https://github.com/smithfarm/DeepSea.git
cd DeepSea
ls -l
make install
zypper --non-interactive install --no-recommends $(rpmspec --requires -q -v deepsea.spec | grep manual | awk '{print $2}')
