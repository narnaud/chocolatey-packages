$packageName = 'jpegtran'
$url = 'http://jpegclub.org/jpegtran.zip'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
