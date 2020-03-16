include:
  - windows.chocolatey
{% for role in salt['grains.get']('roles') %}
  - {{ role }}
{% endfor %}
