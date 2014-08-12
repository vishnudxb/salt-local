etc-sudo:
  file.managed:
    - name: /etc/sudoers
    - source: salt://templates/etc/sudoers
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
