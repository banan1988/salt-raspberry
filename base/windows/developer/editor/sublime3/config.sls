{% set runAs = salt['grains.get']('runas:user') %}

{% set appData = salt['cmd.run'](cmd='$env:APPDATA', shell='powershell', runas=runAs) | regex_escape %}
{% set configPath = appData + '\Sublime Text 3\Packages\User\Preferences.sublime-settings' | regex_escape %}

{{ runAs }}
{{ appData }}
{{ configPath }}

# sublimetext3-config:
#   file.serialize:
#     - name: "{{ configPath }}"
#     - dataset:
#         translate_tabs_to_spaces: true
#         scroll_speed: 1.5
#         show_encoding: true
#     - formatter: json
#     - encoding: UTF-8
#     - create: true
#     - merge_if_exists: true
