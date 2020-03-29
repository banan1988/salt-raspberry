touchpad-driverDiagnosticPopUp-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -PropertyType String -Value 0'
    - shell: powershell

# Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt
explorer-fileExtension-enable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0'
    - shell: powershell
