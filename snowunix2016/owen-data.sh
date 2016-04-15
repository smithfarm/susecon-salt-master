#!/bin/bash
#
# owen-data.sh
#
# Prime cluster with some data (for Owen's demo)
#
dd if=/dev/zero of=/tmp/foo bs=4K count=1M
rados -p rbd  put largeblock  /tmp/foo
rm  /tmp/foo
