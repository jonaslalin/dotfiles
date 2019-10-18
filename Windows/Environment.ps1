Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name CURL
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name GIT
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name GNUPG
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name MAVEN
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name NODEJS
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name OPENSHIFT
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name PUTTY
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name SYSINTERNALS
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name UBUNTU
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name VSCODE
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name WINDOWS_APPS
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name PATH

Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name CURL `
  -Value "%LOCALAPPDATA%\curl\bin" `
  -Type ExpandString
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
  -Name MAVEN `
  -Value "%LOCALAPPDATA%\apache-maven\bin" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name NODEJS `
  -Value "%LOCALAPPDATA%\nodejs" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name OPENSHIFT `
  -Value "%LOCALAPPDATA%\OpenShift" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name PUTTY `
  -Value "%LOCALAPPDATA%\PuTTY" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name SYSINTERNALS `
  -Value "%LOCALAPPDATA%\Sysinternals" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name UBUNTU `
  -Value "%LOCALAPPDATA%\Ubuntu" `
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

$path = "%CURL%",
        "%GIT%",
        "%GNUPG%",
        "%MAVEN%",
        "%NODEJS%",
        "%OPENSHIFT%",
        "%PUTTY%",
        "%SYSINTERNALS%",
        "%UBUNTU%",
        "%VSCODE%",
        "%WINDOWS_APPS%" `
        -join ";"
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name PATH `
  -Value $path `
  -Type ExpandString

Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name HOME
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name JAVA_HOME
Remove-ItemProperty `
  -Path HKCU:\Environment `
  -Name EDITOR

Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name HOME `
  -Value "%USERPROFILE%" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name JAVA_HOME `
  -Value "%LOCALAPPDATA%\jdk" `
  -Type ExpandString
Set-ItemProperty `
  -Path HKCU:\Environment `
  -Name EDITOR `
  -Value "code -w"
