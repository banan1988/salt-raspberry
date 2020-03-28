{% from "windows/developer/tools/map.jinja" import packages with context %}

{% for name, parameters in packages.items() %}

{{ name }}-pkg:
  chocolatey.installed:
    - name: {{ name }}
{% if 'version' in parameters and parameters['version'] != 'latest' %}
    - version: {{ parameters['version'] }}
{% endif %}
{% if 'package-parameters' in parameters and parameters['package-parameters'] is defined %}
    - package_args: {{ parameters['package-parameters'] }}
{% endif %}

# {% if 'config' in parameters and parameters['config'] is defined %}
# {{ name }}-config:
#   file.managed:
#     - name: {{ parameters['config']['path'] }}
# {% if 'values' in parameters['config'] and parameters['config']['values'] is defined %}
#     - contents:
# {% for value in parameters['config']['values'] %}
#       - "{{ value }}"
# {% endfor %}
# {% endif %}
# {% endif %}

{% endfor %}
