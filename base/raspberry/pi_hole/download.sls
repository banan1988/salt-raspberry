pi-hole-download:
  file.managed:
    - name: /root/pi-hole-install.sh
    - mode: 755
    - source: https://install.pi-hole.net
    - source_hash: b4d613805989bb7efcdb2b3d9d11bde2
    - onlyif: 'test ! -e /root/pi-hole-install.sh'
