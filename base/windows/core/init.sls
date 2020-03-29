touchpad-driverDiagnosticPopUp-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -Type DWord -Value 0'
    - shell: powershell
    - runas: BaNaN

explorer-HideFileExt-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0'
    - shell: powershell
    - runas: BaNaN

keyboard-Hotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey" -Type String -Value 3'
    - shell: powershell
    - runas: BaNaN

keyboard-LanguageHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey" -Type String -Value 3'
    - shell: powershell
    - runas: BaNaN

keyboard-LayoutHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey" -Type String -Value 3'
    - shell: powershell
    - runas: BaNaN
