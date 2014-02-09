$packageName = 'puretext'
$url32 = 'http://stevemiller.net/downloads/puretext_3.0_32-bit.zip'
$url64 = 'http://stevemiller.net/downloads/puretext_3.0_64-bit.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  $url = if ($isSytem32Bit) { $url32 } else { $url64 }
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
