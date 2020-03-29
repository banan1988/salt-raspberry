{% set runAs = salt['grains.get']('runas:user') %}

{% set appData = salt['cmd.run']('$env:APPDATA', shell='powershell', runas=runAs) %}

sublimetext3-config:
  file.serialize:
    - name: "{{ appData }}\\Sublime Text 3\\Packages\\User\\Preferences.sublime-settings"
    - dataset:
        translate_tabs_to_spaces: true
        scroll_speed: 1.5
        show_encoding: true
    - formatter: json
    - encoding: UTF-8
    - create: true
    - merge_if_exists: true
