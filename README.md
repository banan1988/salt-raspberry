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

## Masterless
### Install salt with masterless configuration (only salt-minion)
```bash
sudo /srv/salt/raspberry-install-masterless.sh
```

### Before run salt check roles which salt will apply to the raspberry
```bash
sudo cat /etc/salt/minion.d/grains.conf
```

### Run salt locally as root (<a href="https://docs.saltstack.com/en/latest/ref/cli/salt-call.html" target="_blank">Salt doc - SALT-CALL</a>)
```bash
sudo salt-call --local state.apply
```

## Master <-> Minion
### Install salt-master and salt-minion
```bash
sudo /srv/salt/raspberry-install.sh
```

### Before run salt check roles which salt will apply to the raspberry
```bash
sudo cat /etc/salt/minion.d/grains.conf
```

## Windows Minion
### Download installer
```bash
https://repo.saltstack.com/windows/Salt-Minion-2019.2.3-Py3-AMD64-Setup.exe
```
### Install quietly via PowerShell
```bash
Salt-Minion-2019.2.3-Py3-AMD64-Setup /S /master=<your-master-host> /minion-name=<your-minion-name>
```
### Or install via DoubleClick on exe file:)

### Create file C:\salt\conf\minion.d\grains.conf and edit grains
```bash
grains:
  runas:
    user: <your-sytem-user>
  roles:
    - windows.developer
```

### Putty
<a href="https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" target="_blank">Putty 64-bit</a>
