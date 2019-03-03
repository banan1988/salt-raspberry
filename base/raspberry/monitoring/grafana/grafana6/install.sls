{% set version = '6.0.0' %}
{% set cpu_arch = salt['grains.get']('cpuarch') %}
{% set os_arch = salt['grains.get']('osarch') %}

{% set url_pattern = 'https://dl.grafana.com/oss/release/grafana_$VERSION$_$ARCH$.deb' %}
{% set url = url_pattern | replace('$VERSION$', version) | replace('$ARCH$', os_arch) %}

grafana6-pkg:
  pkg.installed:
    - sources:
        - grafana6: {{ url }}
    - watch_in:
        - service: grafana6-service
