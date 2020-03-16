#!/bin/bash

echo "Download bootstrap script:"
curl -L https://bootstrap.saltstack.com -o /tmp/bootstrap_salt.sh
chmod +x /tmp/bootstrap_salt.sh

# Because of error in version 3000 Failed to import grains esxi, this is due most likely to a syntax error we cannot install stable version
VERSION=stable 2019.2.3
echo "Install salt [${VERSION}]:"
sudo /tmp/bootstrap_salt.sh -M "${VERSION}"

echo "Set configuration for masterless minion:"
sudo tee /etc/salt/master.d/master.conf <<EOF
##################################################################
# Overrides primary configuration settings from /etc/salt/master #
##################################################################

# The address of the interface to bind to:
interface: 0.0.0.0

file_roots:
  base:
    - /srv/salt/base

pillar_roots:
  base:
    - /srv/salt/pillar

EOF

echo "Restart salt-master service:"
sudo service salt-master stop
sudo service salt-master start

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
