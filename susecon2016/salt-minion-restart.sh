#!/bin/sh
ssh $node1 sudo systemctl restart salt-minion.service
ssh $node2 sudo systemctl restart salt-minion.service
ssh $node3 sudo systemctl restart salt-minion.service
ssh $node4 sudo systemctl restart salt-minion.service
