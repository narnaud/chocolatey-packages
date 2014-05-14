$packageName = 'instantbird'
$url = 'http://instantbird.com/downloads/1.5/instantbird-1.5.en-US.win32.installer.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
