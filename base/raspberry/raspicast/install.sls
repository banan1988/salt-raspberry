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
    - require:
        - pkg: raspicast-required-pkgs
        - git: raspicast-repository
