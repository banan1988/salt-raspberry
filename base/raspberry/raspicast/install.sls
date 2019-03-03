{% set revision = '2f27c1d4a6' %}

raspicast-required-pkgs:
  pkg.installed:
    - pkgs:
        - libjpeg8-dev
        - libpng12-dev

raspicast-install:
  cmd.run:
    - name: make ilclient && make && make install
    - cwd: /opt/omxiv
    - runas: root
    - onlyif: 'test ! `/usr/bin/omxiv --version | grep "{{ revision }}"`'
    - watch:
        - git: raspicast-repository
    - require:
        - pkg: raspicast-required-pkgs
        - git: raspicast-repository
