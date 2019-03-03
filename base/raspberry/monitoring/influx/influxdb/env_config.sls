influxdb-env-config:
  file.managed:
    - name: /etc/default/influxdb
    - contents:
        - STDERR=/var/log/influxdb/influxd.log
        - STDOUT=/var/log/influxdb/influxd.log
    - watch_in:
        - service: influxdb-service
