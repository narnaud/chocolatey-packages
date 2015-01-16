$packageName = 'haroopad'
$url = 'https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v0.13.0-win-ia32.msi'
$url64 = 'https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v0.13.0-win-x64.msi'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'MSI' '/qb' "$url" "$url64"
