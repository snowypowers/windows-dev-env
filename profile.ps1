
# Installed modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module DockerCompletion


# Useful shortcuts for traversing directories
function cd...  { cd ..\.. }
function cd.... { cd ..\..\.. }

# Compute file hashes - useful for checking successful downloads 
function md5    { Get-FileHash -Algorithm MD5 $args }
function sha1   { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

### Alias

# Prefer hub
Set-Alias git hub

function aws-profile { aws sts get-caller-identity $args}

Set-Alias np "C:\Program Files\Notepad++\notepad++.exe"
Set-Alias chrome "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

### Default Env

set GIT_HOME=C:\Program Files\Git\bin
set AWS_HOME=C:\Program Files\Amazon\AWSCLI

### Variables
$ssh_config="C:\Program Files\Git\etc\ssh\ssh_config"

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
