prometheus-group:
  group.present:
    - name: prometheus

prometheus-user:
  user.present:
    - name: prometheus
    - shell: /bin/false
    - createhome: False
    - groups:
        - prometheus
    - require:
        group: prometheus-group
