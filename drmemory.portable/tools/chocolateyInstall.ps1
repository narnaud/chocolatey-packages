$packageName = 'drmmemory.portable'
$url = 'http://dl.bintray.com/bruening/DrMemory/DrMemory-Windows-1.8.0-8.zip'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
