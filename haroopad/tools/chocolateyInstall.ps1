$packageName = 'haroopad'
$url = 'https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.12.2-i386.msi'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'MSI' '/qb' "$url"
