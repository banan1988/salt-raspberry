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

### Run salt locally as root
```bash
salt-call --local state.apply
```
