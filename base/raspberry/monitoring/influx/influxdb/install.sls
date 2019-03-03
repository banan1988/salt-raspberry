influxdb-pkg:
  pkg.installed:
    - name: influxdb
    - require:
        - pkgrepo: influx-repository
    - watch_in:
        - service: influxdb-service
