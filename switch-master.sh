#!/bin/sh
LM=$(cat /etc/susecon2017/local_master)
sed -i "s/^master.*\$/master: $LM/" /etc/salt/minion.d/ceph.conf
