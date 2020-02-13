Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name GIT
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name GNUPG
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name JDK
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name MAVEN
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name NODEJS
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name POSTGRES
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name PYTHON
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name VSCODE
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name WINDOWS_APPS
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name GIT `
  -Value "%LOCALAPPDATA%\Git\cmd" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name GNUPG `
  -Value "%LOCALAPPDATA%\gnupg\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name JDK `
  -Value "%LOCALAPPDATA%\jdk\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name MAVEN `
  -Value "%LOCALAPPDATA%\maven\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name NODEJS `
  -Value "%LOCALAPPDATA%\nodejs" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name POSTGRES `
  -Value "%LOCALAPPDATA%\postgres\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name PYTHON `
  -Value "%LOCALAPPDATA%\python" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name VSCODE `
  -Value "%LOCALAPPDATA%\Microsoft VS Code\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name WINDOWS_APPS `
  -Value "%LOCALAPPDATA%\Microsoft\WindowsApps" `
  -Type ExpandString
$path = "%GIT%",
        "%GNUPG%",
        "%JDK%",
        "%MAVEN%",
        "%NODEJS%",
        "%POSTGRES%",
        "%PYTHON%",
        "%VSCODE%",
        "%WINDOWS_APPS%" `
        -join ";"
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name Path
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name Path `
  -Value $path `
  -Type ExpandString

Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name EDITOR
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name EDITOR `
  -Value "code -w"

Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name JAVA_HOME
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name JAVA_HOME `
  -Value "%LOCALAPPDATA%\jdk" `
  -Type ExpandString

Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name PGDATA
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name PGDATA `
  -Value "%LOCALAPPDATA%\postgres\data" `
  -Type ExpandString
