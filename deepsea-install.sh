#!/bin/sh
zypper --non-interactive install --no-recommends make
git clone --depth 1 https://github.com/SUSE/DeepSea.git
cd DeepSea
make install
zypper --non-interactive install --no-recommends \
    $(rpmspec --requires -q -v DeepSea/deepsea.spec | grep manual | awk \'{print $2}\')
