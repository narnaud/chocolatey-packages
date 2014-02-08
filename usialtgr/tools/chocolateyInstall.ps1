$packageName = 'usialtgr'
$url = 'https://usialtgr.googlecode.com/files/usialtgr_v1.4.zip'

try {
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  
  $zipfile = Join-Path $tempDir "$($packageName).zip"
  Get-ChocolateyWebFile "$packageName" "$zipfile" "$url"  
  Get-ChocolateyUnzip "$zipfile" "$tempDir"

  $exefile = Join-Path $tempDir "setup.exe"
  Install-ChocolateyInstallPackage "$packageName" 'exe' '' "$exefile"
  
  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

