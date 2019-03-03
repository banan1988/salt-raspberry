{% set revision = '2f27c1d4a6' %}

raspicast-repository:
  git.latest:
    - name: https://github.com/HaarigerHarald/omxiv.git
    - rev: {{ revision }}
    - target: /opt/omxiv
