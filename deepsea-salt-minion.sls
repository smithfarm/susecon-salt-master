# deepsea-salt-minion.sls
#
# apply this state on the delegate (DeepSea) minion nodes
# (i.e. all the delegate nodes)

salt:
  pkg.installed:
    - pkgs:
      - salt-minion

mycommand2:
  cmd.run:
    - name: systemctl start salt-master.service
    - user: root

