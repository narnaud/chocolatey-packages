$packageName = 'jpegtran'
$url = 'http://jpegclub.org/jpegtran.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
