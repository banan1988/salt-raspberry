{% set runAs = salt['grains.get']('runas:user') %}
{% set appData = salt['cmd.run'](cmd='$env:APPDATA', shell='powershell', runas=runAs).strip() | replace('\\', '\\\\') %}

sublimetext3-package-control:
  file.managed:
    - name: "{{ appData }}\\Sublime Text 3\\Installed Packages\\Package Control.sublime-package"
    - source: https://packagecontrol.io/Package Control.sublime-package
    - source_hash: bdc6885d09d7dd750810b3179e2fc212
