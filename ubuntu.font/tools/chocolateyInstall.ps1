$packageName = 'ubuntu.font'
$url = 'http://font.ubuntu.com/download/ubuntu-font-family-0.80.zip'

try {
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  
  $zipfile = Join-Path $tempDir "$($packageName).zip"
  Get-ChocolateyWebFile "$packageName" "$zipfile" "$url"  
  Get-ChocolateyUnzip "$zipfile" "$tempDir"

  $destination = Join-Path $tempDir 'ubuntu-font-family-0.80'

  $shell = New-Object -ComObject Shell.Application
  $fontsFolder = $shell.Namespace(0x14)

  Get-ChildItem $destination -Recurse -Filter *.ttf |
    % { $fontsFolder.CopyHere($_.FullName) }

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

