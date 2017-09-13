# deepsea-salt-master.sls
#
# apply this state on the delegate (DeepSea) master nodes

salt:
  pkg.installed:
    - pkgs:
      - salt-master

mycommand2:
  cmd.run:
    - name: systemctl start salt-master.service
    - user: root

