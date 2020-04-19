{% set runAs = salt['grains.get']('runas:user') %}
{% set appData = salt['cmd.run'](cmd='$env:APPDATA', shell='powershell', runas=runAs).strip() | replace('\\', '\\\\') %}

sublimetext3-syntax-YAML:
  file.serialize:
    - name: "{{ appData }}\\Sublime Text 3\\Packages\\User\\YAML.sublime-settings"
    - dataset:
        extensions: ["sls"]
    - formatter: json
    - encoding: UTF-8
    - create: true
    - merge_if_exists: true
