$packageName = 'ptime' # arbitrary name for the package, used in messages
$url = 'http://www.pc-tools.net/files/win32/freeware/ptime-10.zip'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
