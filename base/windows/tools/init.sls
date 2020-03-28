{% from "windows/tools/map.jinja" import packages with context %}

{% for name, parameters in packages.items() %}

{{ name }}-pkg:
  chocolatey.installed:
    - name: {{ name }}
{% if 'version' in parameters and parameters['version'] != 'latest' %}
    - version: {{ parameters['version'] }}
{% endif %}

{% if 'autostart' in parameters and parameters['autostart']['enabled'] %}
{{ name }}-autostart:
  cmd.script:
    - source: salt://windows/tools/files/autostart.ps1
    - args: -app {{ parameters['autostart']['app'] }}
    - shell: "powershell"
{% endif %}

{% endfor %}
