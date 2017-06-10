$packageName = 'drmemory.portable'
$url = '{{DownloadUrl}}'
# Extract name of the zip file
$zipDir = [regex]::match($url, "/([^/]*\d\.\d\.\d-\d).zip").Groups[1].value

try {
  $binRoot = Get-BinRoot
  $installDir = Join-Path $binRoot "drmemory"

  # Remove old files
  Remove-Item $installDir -Force -Recurse

  # On 64 bits system, also add bin64 to the path
  $binDir = Join-Path $installDir "bin"
  if ([System.IntPtr]::Size -eq 8) {
    $bin64Dir = Join-Path $installDir "bin64"
    $binDir = "$bin64Dir;$binDir"
  }

  Install-ChocolateyPath $binDir
  $env:Path = "$($env:Path);$binDir"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  # Remove the $zipDir directory
  Move-Item "$installDir\$zipDir\*" "$installDir" -Force
  Remove-Item "$installDir\$zipDir"

  # Remove any existing exe/bat files from earlier install
  if ($env:chocolateyinstall -ne $null) {
    $nugetBin = join-path $env:chocolateyinstall 'bin'
    $files = get-childitem $installDir -include *.exe -recurse
    foreach ($file in $files) {
      try {
          $batchFile = join-path $nugetBin ($file.Name.Replace(".exe",".bat").Replace(".EXE",".bat"))
          if(test-path $batchFile){
            remove-item $batchFile
        }
      }catch {}
    }
  }

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
