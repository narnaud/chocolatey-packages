$packageName = 'lato'
$url = 'http://www.latofonts.com/download/Lato2OFL.zip'

try {
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  
  $zipfile = Join-Path $tempDir "$($packageName).zip"
  Get-ChocolateyWebFile "$packageName" "$zipfile" "$url"  
  Get-ChocolateyUnzip "$zipfile" "$tempDir"

  $destination = Join-Path $tempDir 'Lato2OFL'

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

