$packageName = 'haroopad'
$url = 'https://dl.dropbox.com/s/aqz9deb54le3b1b/haroopad-v0.11.1-i386.msi'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'MSI' '/qb' "$url"
