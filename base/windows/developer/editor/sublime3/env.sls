sublimetext3-setenv-SUBLIME_TEXT_3_HOME:
  cmd.run:
    - name: 'setx SUBLIME_TEXT_3_HOME "C:\Program Files\Sublime Text 3" /m'
    - shell: powershell

sublimetext3-setenv-PATH:
  cmd.run:
    - name: 'setx PATH "$Env:PATH;$Env:SUBLIME_TEXT_3_HOME" /m'
    - shell: powershell
