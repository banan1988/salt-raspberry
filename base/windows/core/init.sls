touchpad-driverDiagnosticPopUp-disable:
  cmd.run:
    - name: 'reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug /v DumpKernel /d 00000000 /t REG_DWORD /f'
    - shell: powershell

# Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt
explorer-fileExtension-enable:
  cmd.run:
    - name: 'Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -Value 0'
    - shell: powershell
