{% set os_codename = salt['grains.get']('oscodename') %}

influx-repository:
  pkgrepo.managed:
    - humanname: Influx repository
    - name: deb https://repos.influxdata.com/debian {{ os_codename }} stable
    - dist: {{ os_codename }}
    - file: /etc/apt/sources.list.d/influx.list
    - gpgcheck: 1
    - key_url: https://repos.influxdata.com/influxdb.key
