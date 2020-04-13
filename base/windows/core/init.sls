{% set runAs = salt['grains.get']('runas:user') %}

touchpad-driverDiagnosticPopUp-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SynTP\Parameters\Debug" -Name "DumpKernel" -Type DWord -Value 0'
    - shell: powershell
    - runas: {{ runAs }}
  test.show_notification:
    - text: |
        If combination of keys Ctrl+Shift+L still shows "Debug popup", just uninstall Synaptics software

explorer-HideFileExt-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0'
    - unless: '(Get-ItemPropertyValue -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt") -eq 0'
    - shell: powershell
    - runas: {{ runAs }}
  test.show_notification:
    - text: |
        Restart required

keyboard-Hotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey" -Type String -Value 3'
    - unless: '(Get-ItemPropertyValue -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Hotkey") -eq 3'
    - shell: powershell
    - runas: {{ runAs }}
  test.show_notification:
    - text: |
        Restart required

keyboard-LanguageHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey" -Type String -Value 3'
    - unless: '(Get-ItemPropertyValue -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Language Hotkey") -eq 3'
    - shell: powershell
    - runas: {{ runAs }}
  test.show_notification:
    - text: |
        Restart required

keyboard-LayoutHotkey-disable:
  cmd.run:
    - name: 'Set-ItemProperty -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey" -Type String -Value 3'
    - unless: '(Get-ItemPropertyValue -Path "Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Keyboard Layout\Toggle" -Name "Layout Hotkey") -eq 3'
    - shell: powershell
    - runas: {{ runAs }}
  test.show_notification:
    - text: |
        Restart required
