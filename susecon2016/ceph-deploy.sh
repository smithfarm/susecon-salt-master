#!/bin/bash
# 
# ceph-deploy.sh
#
# Deploy a Ceph cluster on a delegate's mon/osd nodes
# (to be run as user 'cephadm' from the admin node)
#
source .bashrc
ceph-deploy new $node1 $node2 $node3
ceph-deploy mon create-initial
ceph-deploy osd prepare $node1:xvdb
ceph-deploy osd prepare $node2:xvdb
ceph-deploy osd prepare $node3:xvdb
ceph-deploy osd prepare $node4:xvdb
ceph-deploy admin $ADMIN
ssh $ADMIN sudo chmod 644 /etc/ceph/ceph.client.admin.keyring
ceph-deploy admin $node1
ssh $node1 sudo chmod 644 /etc/ceph/ceph.client.admin.keyring
ceph-deploy admin $node2
ssh $node2 sudo chmod 644 /etc/ceph/ceph.client.admin.keyring
ceph-deploy admin $node3
ssh $node3 sudo chmod 644 /etc/ceph/ceph.client.admin.keyring
ceph-deploy admin $node4
ssh $node4 sudo chmod 644 /etc/ceph/ceph.client.admin.keyring
