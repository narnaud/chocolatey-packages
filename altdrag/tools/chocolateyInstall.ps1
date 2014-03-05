$packageName = 'altdrag'
$url = 'http://altdrag.googlecode.com/files/AltDrag-1.0.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
