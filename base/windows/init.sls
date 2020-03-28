include:
  - windows.chocolatey
  - windows.core
{% for role in grains['roles'] | default([]) %}
{% if role is defined and role != None and role | length > 0 %}
  - {{ role }}
{% endif %}
{% endfor %}
