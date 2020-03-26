{% from "windows/office/map.jinja" import packages with context %}

{% for name, parameters in packages.items() %}
{{ name }}-pkg:
  chocolatey.installed:
    - name: {{ name }}
{% if 'version' in parameters and parameters['version'] != 'latest' %}
    - version: {{ parameters['version'] }}
{% endif %}
{% endfor %}
