touchpad-driverDiagnosticPopUp-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -PropertyType DWord -Value 0'
    - shell: powershell
#    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel"'

explorer-HideFileExt-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0'
    - shell: powershell

keyboard-Hotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey" -PropertyType String -Value 3'
    - shell: powershell
#    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey"'

keyboard-LanguageHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey" -PropertyType String -Value 3'
    - shell: powershell
#    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey"'

keyboard-LayoutHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey" -PropertyType String -Value 3'
    - shell: powershell
#    - unless: 'Get-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey"'
