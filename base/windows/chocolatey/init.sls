chocolatey-pkg:
  cmd.script:
    - source: https://chocolatey.org/install.ps1
    - shell: "powershell"
    - env:
        - chocolateyVersion: "v0.10.15"
        - chocolateyUseWindowsCompression: "true"
