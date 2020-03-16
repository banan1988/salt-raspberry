#!/bin/bash

echo "Download bootstrap script:"
curl -L https://bootstrap.saltstack.com -o /tmp/bootstrap_salt.sh
chmod +x /tmp/bootstrap_salt.sh

# Because of error in version 3000 Failed to import grains esxi, this is due most likely to a syntax error we cannot install stable version
VERSION=stable 2019.2.3
echo "Install salt [${VERSION}]:"
sudo /tmp/bootstrap_salt.sh "${VERSION}"

echo "Set configuration for masterless minion:"
sudo tee /etc/salt/minion.d/masterless.conf <<EOF
##################################################
# Masterless configuration - without salt-master #
##################################################

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

echo "Set grains for raspberry:"
sudo tee /etc/salt/minion.d/grains.conf <<EOF
grains:
  roles:
    - raspberry.pi_hole
    - raspberry.raspicast
    - raspberry.kodi.kodi18
    - raspberry.monitoring
    - raspberry.iot.mqtt

EOF
