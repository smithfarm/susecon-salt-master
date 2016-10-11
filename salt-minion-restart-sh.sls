/home/ceph/salt-minion-restart.sh:
  file.managed:
    - source: salt://salt-minion-restart.sh
    - user: cephadm
    - group: users
    - mode: 755

mycommand:
  cmd.run:
    - name: /home/ceph/salt-minion-restart.sh
    - user: cephadm
