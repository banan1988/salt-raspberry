locale-en_US:
  locale.present:
    - name: en_US.UTF-8

locale-system:
  locale.system:
    - name: en_US.UTF-8
    - require:
        - locale: locale-en_US

setenv-LANG:
  environ.setenv:
    - name: LANG
    - value: en_US.UTF-8
    - update_minion: True
