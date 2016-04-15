mycommand1:
  cmd.run:
    - name: zypper --no-gpg-checks --non-interactive install ceph
    - user: root

mycommand2:
  cmd.run:
    - name: zypper --no-gpg-checks --non-interactive install ceph-deploy
    - user: root
