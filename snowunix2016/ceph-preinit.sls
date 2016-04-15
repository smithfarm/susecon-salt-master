/home/ceph/.bashrc:
  file.managed:
    - source: salt://bashrc
    - user: ceph
    - group: users
    - mode: 644
    - template: jinja

/root/.bashrc:
  file.managed:
    - source: salt://bashrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/motd:
  file.managed:
    - source: salt://etc-motd
    - user: root
    - group: root
    - mode: 644
    - template: jinja

ssh-no-interactive.sh:
  cmd.script:
    - source: salt://ssh-no-interactive.sh
    - cwd: /home/ceph
    - user: ceph
    - template: jinja

