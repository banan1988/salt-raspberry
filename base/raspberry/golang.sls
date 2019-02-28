golang-pkg:
  pkg.installed:
    - name: golang

golang-env-GOPATH:
  file.line:
    - name: /etc/rc.local
    - mode: ensure
    - content: export GOPATH=~/go
    - before: exit 0
    - require:
        - pkg: golang-pkg
