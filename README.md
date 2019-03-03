# salt-raspberry

### Install git
```bash
sudo apt install -y git
```

### Clone repository
```bash
sudo mkdir -p /srv/salt/
sudo git clone https://github.com/banan1988/salt-raspberry.git /srv/salt/
```

### Install salt with masterless configuration (only salt-minion)
```bash
sudo /srv/salt/install.sh
```

### Switch to root
```bash
sudo -s
```

### Before run salt check roles which salt will apply to the raspberry
```bash
cat /etc/salt/minion.d/grains.conf
```

### Run salt locally as root (<a href="https://docs.saltstack.com/en/latest/ref/cli/salt-call.html" target="_blank">Salt doc - SALT-CALL</a>)
```bash
salt-call --local state.apply
```
