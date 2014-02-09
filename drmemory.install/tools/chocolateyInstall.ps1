$packageName = 'drmemory.install'
$url = 'https://drmemory.googlecode.com/files/DrMemory-Windows-1.6.1-2.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
