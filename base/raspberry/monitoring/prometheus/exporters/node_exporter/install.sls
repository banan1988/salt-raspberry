{% set version = '2.7.2' %}
{% set cpu_arch = salt['grains.get']('cpuarch') %}
{% set os_arch = salt['grains.get']('osarch') %}

{% set arch = cpu_arch | regex_search('(armv[0-9]).*', ignorecase=True) %}
{% set url_pattern = 'https://github.com/prometheus/prometheus/releases/download/v$VERSION$/prometheus-$VERSION$.linux-$ARCH$.tar.gz' %}
{% set url = url_pattern | replace('$VERSION$', version) | replace('$ARCH$', arch) %}

prometheus27-archive:
  archive.extracted:
    - name: /opt/prometheus/prometheus27
    - source: {{ url }}
    - user: prometheus
    - group: prometheus
    - onlyif: 'test ! `prometheus --version | grep "{{ version }}"`'
    - watch_in:
        - service: prometheus27-service
