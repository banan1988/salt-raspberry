chronograf-pkg:
  pkg.installed:
    - name: chronograf
    - require:
        - pkgrepo: influx-repository
    - watch_in:
        - service: chronograf-service
