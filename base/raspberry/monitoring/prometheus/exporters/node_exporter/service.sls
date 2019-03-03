prometheus27-service-systemd:
  file.managed:
    - name: /etc/systemd/system/prometheus.service
    - source: salt://raspberry/monitoring/prometheus/prometheus27/files/service.systemd
    - user: root
    - mode: 644
    - watch_in:
        - service: prometheus27-service

prometheus27-service:
  service.running:
    - name: prometheus
    - enable: True
    - reload: True
