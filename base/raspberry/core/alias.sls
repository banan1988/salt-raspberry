alias-pi:
  file.managed:
    - name: /home/pi/.bash_aliases
    - contents:
        - "export LS_OPTIONS='--color=auto'"
        - "alias ll='ls $LS_OPTIONS -la'"

alias-root:
  file.managed:
    - name: /root/.bash_aliases
    - contents:
        - "export LS_OPTIONS='--color=auto'"
        - "alias ll='ls $LS_OPTIONS -la'"

alias-root-reload:
  file.blockreplace:
    - name: /root/.bashrc
    - marker_start: "# START Alias definitions."
    - marker_end: "# END Alias definitions."
    - source:
        - salt://raspberry/core/files/bashrc.sh
    - append_if_not_found: True
    - backup: '.bak'
    - show_changes: True
    - require:
        - file: /root/.bash_aliases
