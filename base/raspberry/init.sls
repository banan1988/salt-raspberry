include:
  - raspberry.core
{% for role in salt['grains.get']('roles') %}
  - {{ role }}
{% endfor %}
