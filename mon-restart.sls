mycommand1:
  cmd.run:
    - name: systemctl restart ceph-mon*
    - user: root

mycommand1:
  cmd.run:
    - name: systemctl restart ceph-osd*
    - user: root
