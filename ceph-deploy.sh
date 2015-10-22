#!/bin/bash
# 
# ceph-deploy.sh
#
# Deploy a Ceph cluster on a delegate's mon/osd nodes
# (to be run as user 'ceph' from the admin node)
#
ceph-deploy new $node1 $node2 $node3 $node4
ceph-deploy mon create-initial
ceph-deploy osd prepare $node1:xvdb
ceph-deploy osd prepare $node2:xvdb
ceph-deploy osd prepare $node3:xvdb
ceph-deploy osd prepare $node4:xvdb
