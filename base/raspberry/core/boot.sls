boot-config-backup:
  file.copy:
    - name: /boot/config.txt.bak
    - source: /boot/config.txt
    - onlyif: 'test ! -e /boot/config.txt.bak'

boot-config:
  file.managed:
    - name: /boot/config.txt
    - contents:
        - "# For more options and information see http://rpf.io/configtxt"
        - "# Set memory for GPU"
        - gpu_mem=256
    - require:
        - file: boot-config-backup
