$packageName = 'haroopad'
$url = 'https://dl.dropbox.com/s/7fwdzam2ipfoqg6/haroopad-v0.12.0-i386.msi'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'MSI' '/qb' "$url"
