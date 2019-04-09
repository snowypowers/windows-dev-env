if ((Get-ExecutionPolicy) -eq "Restricted") {
    Set-ExecutionPolicy Unrestricted -Force
}

# Configure Windows
Disable-GameBarTips
Disable-BingSearch

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar -EnableOpenFileExplorerToQuickAccess -EnableShowRecentFilesInQuickAccess -EnableShowFrequentFoldersInQuickAccess -EnableExpandToOpenFolder -EnableShowRibbon

Update-ExecutionPolicy Unrestricted

# Essentials

cinst conemu
cinst git.install
cinst poshgit
cinst -y 7zip.install
cinst -y notepadplusplus.install
cinst -y vscode
cinst -y FiraCode


# Scoop
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Nodejs
cinst -y nodejs-lts
cinst -y yarn

# Python
cinst -y python
cinst -y pip
cinst -y easy.install

# AWS Tools
cinst -y awscli
cinst -y awstools.powershell

# Terraform
cinst -y terraform

# Random stuff
cinst -y vlc
