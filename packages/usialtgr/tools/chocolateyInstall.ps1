$packageName = 'usialtgr'
$url = 'https://usialtgr.googlecode.com/files/usialtgr_v1.4.zip'

try {
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {
    [System.IO.Directory]::CreateDirectory($tempDir)
  }
  
  $scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installerAuto = Join-Path $scriptDir 'usialtgr.au3';  

  $zipfile = Join-Path $tempDir "$($packageName).zip"
  Get-ChocolateyWebFile "$packageName" "$zipfile" "$url"  
  Get-ChocolateyUnzip "$zipfile" "$tempDir"

  Write-Host "Installing `'$packageName`' with AutoIt3"
  $exefile = Join-Path $tempDir "setup.exe"
  $installArgs = "`"$installerAuto`" `"$exefile`""
  Start-ChocolateyProcessAsAdmin $installArgs "autoit3"
  
  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
