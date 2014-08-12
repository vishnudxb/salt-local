docker-repo:
  pkgrepo.managed:
    - humanname: Docker Repo
    - name: "deb http://get.docker.io/ubuntu docker main"
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: 36A1D7869245C8950F966E92D8576A8BA88D21E9
    - keyserver: keyserver.ubuntu.com
    - key_url: 
    - require_in:
      - pkg: docker

docker:
  pkg:
    - installed
    - name: lxc-docker

docker-py:
  pip:
    - installed
