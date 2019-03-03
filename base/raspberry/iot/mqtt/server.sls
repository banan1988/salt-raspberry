mosquitto-server-pkg:
  pkg.installed:
    - name: mosquitto
    - version: 1.4.10-3+deb9u3
    - watch_in:
        - service: mosquitto-server-service

mosquitto-server-service:
  service.running:
    - name: mosquitto
    - enable: True
    - reload: True
