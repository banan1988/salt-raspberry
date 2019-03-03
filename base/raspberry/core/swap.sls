swap-config-backup:
  file.copy:
    - name: /etc/dphys-swapfile.bak
    - source: /etc/dphys-swapfile
    - onlyif: 'test ! -e /etc/dphys-swapfile.bak'

swap-config:
  file.managed:
    - name: /etc/dphys-swapfile
    - contents:
        - CONF_SWAPFILE=/var/swap
        - CONF_SWAPSIZE=2048
        - CONF_SWAPFACTOR=2
        - CONF_MAXSWAP=4096
    - require:
        - file: swap-config-backup
    - watch_in:
        - service: swap-service

swap-service:
  service.running:
    - name: dphys-swapfile
    - enable: True
    - reload: True
