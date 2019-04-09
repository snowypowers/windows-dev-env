if (-Not (Get-Command scoop)) {
    # Scoop
    Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
    scoop install sudo
    scoop install busybox
}