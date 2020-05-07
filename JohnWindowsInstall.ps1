# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Work software
choco install dotnetcore-sdk -y
choco install linqpad -y
choco install vscode -y
choco install visualstudio2019enterprise -y
choco install visualstudio2019-workload-netweb -y
choco install visualstudio2019-workload-azure -y
choco install visualstudio2019-workload-node -y
choco install visualstudio2019-workload-manageddesktop -y
choco install visualstudio2019-workload-netcoretools -y
choco install microsoft-teams.install -y
choco install sql-server-management-studio -y
choco install office365proplus -y
choco install docker-cli -y
choco install nodejs.install
choco install keepass.install -y

# Personal software
choco install logitech-options -y
choco install everything -y
choco install whatsapp -y
choco install geforce-experience -y
choco install steam -y
choco install dropbox -y
choco install curl -y
choco install hyperx-ngenuity -y

# Shared software
choco install googlechrome -y
choco install firefox -y
choco install adobereader -y
choco install putty.install -y
choco install git.install -y
choco install gitkraken -y
choco install notepadplusplus.install -y
choco install 7zip -y

# VSCode extensions
code --install-extension eamodio.gitlens
code --install-extension ms-vscode.csharp
code --install-extension zignd.html-css-class-completion
code --install-extension eg2.vscode-npm-script
code --install-extension wayou.vscode-todo-highlight
code --install-extension vscode-icons-team.vscode-icons
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension johnpapa.angular-essentials
code --install-extension zhuangtongfa.material-theme
code --install-extension ms-vscode.powershell

# Refresh the PowerShell environment
RefreshEnv.cmd

# Disable User Access Control warning
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
