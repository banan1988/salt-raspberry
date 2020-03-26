sublimetext3-pkg:
  chocolatey.installed:
    - name: sublimetext3
    - version: 3.2.2

sublimetext3-setenv-SUBLIME_TEXT_3_HOME:
  environ.setenv:
    - name: SUBLIME_TEXT_3_HOME
    - value: "C:\\Program Files\\Sublime Text 3"
    - update_minion: true
    - permanent: true

#sublimetext3-setenv-SUBLIME_TEXT_3_HOME:
#  cmd.run:
#    - name: 'setx SUBLIME_TEXT_3_HOME "C:\Program Files\Sublime Text 3" /m'
#    - shell: "powershell"
