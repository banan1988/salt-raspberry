touchpad-driverDiagnosticPopUp-new-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -Type DWord -Value 0'
    - shell: powershell
    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel"'

touchpad-driverDiagnosticPopUp-set-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -Type DWord -Value 0'
    - shell: powershell


explorer-HideFileExt-new-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0'
    - shell: powershell
    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt"'

explorer-HideFileExt-set-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0'
    - shell: powershell
    - runas: BaNaN


keyboard-Hotkey-new-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey" -Type String -Value 3'
    - shell: powershell
    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey"'

keyboard-Hotkey-set-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey" -Type String -Value 3'
    - shell: powershell


keyboard-LanguageHotkey-new-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey" -Type String -Value 3'
    - shell: powershell
    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey"'
keyboard-LanguageHotkey-set-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey" -Type String -Value 3'
    - shell: powershell


keyboard-LayoutHotkey-new-disable:
  cmd.run:
    - name: 'New-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey" -Type String -Value 3'
    - shell: powershell
    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey"'
keyboard-LayoutHotkey-set-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey" -Type String -Value 3'
    - shell: powershell
