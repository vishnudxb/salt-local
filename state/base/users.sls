user1:
  group:
    - present
    - gid: 4001
  user:
    - present
    - fullname: USER 1
    - home:  /home/user1
    - shell: /bin/bash
    - uid: 4000
    - gid: 4001
    - groups:
      - sudo
    - require:
      - group: user1
    - makedirs: True

ssh_user1:
  ssh_auth:
    - present
    - user: user1
    - group: user1
    - source: salt://templates/ssh_keys/user1/id_rsa.pub
    - mode: 0644
    - template: jinja

user2:
  group:
    - present
    - gid: 4003
  user:
    - present
    - fullname: USER 2
    - home:  /home/user2
    - shell: /bin/bash
    - uid: 4002
    - gid: 4003
    - groups:
      - sudo
    - require:
      - group: user2
    - makedirs: True

ssh_user2:
  ssh_auth:
    - present
    - user: user2
    - group: user2
    - source: salt://templates/ssh_keys/user2/id_rsa.pub
    - mode: 0644
    - template: jinja

user3:
  group:
    - present
    - gid: 4005
  user:
    - present
    - fullname: USER 3
    - home:  /home/user3
    - shell: /bin/bash
    - uid: 4004
    - gid: 4005
    - groups:
      - sudo
    - require:
      - group: user3
    - makedirs: True

ssh_user3:
  ssh_auth:
    - present
    - user: user3
    - group: user3
    - source: salt://templates/ssh_keys/user3/id_rsa.pub
    - mode: 0644
    - template: jinja
