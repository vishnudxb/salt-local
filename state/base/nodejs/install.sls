rlwrap:
  pkg:
    - installed

nodejs:
  pkg:
    - installed
    - sources:
      - nodejs: http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
    - require:
      - pkg: rlwrap
