$packageName = 'wunderlist'
$url = 'http://windows.wunderlist.com/download/Wunderlist-Setup.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
