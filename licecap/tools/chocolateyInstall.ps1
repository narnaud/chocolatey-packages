$packageName = 'licecap'
$url = 'http://www.cockos.com/licecap/licecap125-install.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"

