$packageName = 'ptime'
$url = 'http://www.pc-tools.net/files/win32/freeware/ptime-10.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
