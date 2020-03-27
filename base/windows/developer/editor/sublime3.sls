sublimetext3-pkg:
  chocolatey.installed:
    - name: sublimetext3
    - version: 3.2.2

sublimetext3-setenv-SUBLIME_TEXT_3_HOME:
  cmd.run:
    - name: 'setx SUBLIME_TEXT_3_HOME "C:\Program Files\Sublime Text 3" /m'
    - shell: "powershell"
