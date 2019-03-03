#!/bin/bash

curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
chmod +x bootstrap_salt.sh
sudo bootstrap_salt.sh stable

sudo tee /etc/salt/minion.d/masterless.conf <<EOF
file_roots:
    base:
        - /srv/salt/base

pillar_roots:
    base:
        - /srv/salt/pillar

file_client: local
master_type: disable
master_tries: 0

log_level: warn

EOF

sudo tee /etc/salt/minion.d/grains.conf <<EOF
grains:
  roles:
    - raspberry.pi_hole
    - raspberry.raspicast
    - raspberry.kodi.kodi18
    - raspberry.monitoring
    - raspberry.iot.mqtt
EOF
