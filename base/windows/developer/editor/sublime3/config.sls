{% set runAs = salt['grains.get']('runas:user') %}
{% set appData = salt['cmd.run'](cmd='$env:APPDATA', shell='powershell', runas=runAs).strip() | replace('\\', '\\\\') %}
{% set configPath = appData.strip() | path_join('Sublime Text 3\\Packages\\User') %}

sublimetext3-config:
  file.serialize:
    - name: "{{ configPath }}\\Sublime Text 3\\Packages\\User\\Preferences.sublime-settings"
    - dataset:
        translate_tabs_to_spaces: true
        scroll_speed: 1.5
        show_encoding: true
    - formatter: json
    - encoding: UTF-8
    - create: true
    - merge_if_exists: true
