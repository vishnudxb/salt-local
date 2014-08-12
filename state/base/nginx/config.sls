include:
  - nginx.install

nginx-sites-available:
  file.managed:
    - name: /etc/nginx/sites-available/vishnu.conf
    - source: salt://templates/etc/nginx/sites-available/vishnu.conf
    - user: root
    - group: root
    - mode: 0644
    - template: jinja

/etc/nginx/sites-enabled/vishnu.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/vishnu.conf

nginx-ssl-key:
  file.managed:
    - name: /etc/nginx/ssl/vishnu.key
    - source: salt://templates/etc/nginx/ssl/vishnu.key
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
    - makedirs: True

nginx-ssl-crt:
  file.managed:
    - name: /etc/nginx/ssl/vishnu.crt
    - source: salt://templates/etc/nginx/ssl/vishnu.crt
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
    - makedirs: True
