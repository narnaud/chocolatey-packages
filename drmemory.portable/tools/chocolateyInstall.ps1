$packageName = 'drmmemory.portable'
$url = 'https://drmemory.googlecode.com/files/DrMemory-Windows-1.6.1-2.zip'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
