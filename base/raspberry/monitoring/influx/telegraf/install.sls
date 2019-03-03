telegraf-pkg:
  pkg.installed:
    - name: telegraf
    - require:
        - pkgrepo: influx-repository
    - watch_in:
        - service: telegraf-service
