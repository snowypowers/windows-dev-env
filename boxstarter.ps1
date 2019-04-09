# Configure Windows
Disable-GameBarTips
Disable-BingSearch

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar -EnableOpenFileExplorerToQuickAccess -EnableShowRecentFilesInQuickAccess -EnableShowFrequentFoldersInQuickAccess -EnableExpandToOpenFolder -EnableShowRibbon

Update-ExecutionPolicy Unrestricted

./apps/core.ps1

./apps/scoop.ps1

./apps/work.ps1