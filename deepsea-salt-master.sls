# deepsea-salt-master.sls
#
# apply this state on the delegate (DeepSea) master nodes

salt-master-install:
  pkg.installed:
    - pkgs:
      - salt-master

deepsea-install:
  cmd.script:
    - name: salt://deepsea-install.sh
    - cwd: /root
    - user: root

restart-salt-master:
  cmd.run:
    - name: systemctl start salt-master.service
    - user: root

/root/bin/health-ok:
  file.managed:
    - source: salt://health-ok.sh
    - user: root
    - group: root
    - mode: 755
