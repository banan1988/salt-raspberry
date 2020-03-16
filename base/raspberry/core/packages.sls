packages-installed:
  pkg.installed:
    - pkgs:
        - vim
        - htop
        - apt-transport-https

packages-removed:
  pkg.purged:
    - pkgs:
        - minecraft
        - minecraft-pi
        - libreoffice
