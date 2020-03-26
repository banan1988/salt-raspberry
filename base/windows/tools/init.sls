{% from "windows/tools/map.jinja" import packages with context %}

{% for name, parameters in packages.items() %}
{{ name }}-pkg:
  chocolatey.installed:
    - name: {{ name }}
{% if 'version' in parameters %}
    - version: {{ parameters['version'] }}
{% endif %}
{% endfor %}
