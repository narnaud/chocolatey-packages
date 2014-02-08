$packageName = 'charmtimetracker'
$url = 'http://www.kdab.com/~frank/Charm/Charm%201.8.0.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
