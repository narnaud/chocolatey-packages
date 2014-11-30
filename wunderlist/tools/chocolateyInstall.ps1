$packageName = 'wunderlist'
$url = 'https://www.wunderlist.com/download/windows7'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'msi' '/quiet' "$url"
