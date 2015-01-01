$packageName = 'drmmemory.portable'
$version = 'DrMemory-Windows-1.8.0-8'
$url = 'http://dl.bintray.com/bruening/DrMemory/DrMemory-Windows-1.8.0-8.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  # Unzip
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  # Ignore all executables in dynamorio
  $execs = Get-ChildItem -path $installDir\$version\dynamorio -Recurse -Include *.exe | % { $_.FullName }
  ForEach ($exec in $execs) {
     Set-Content -Path ("$exec.ignore") -Value $null
  }

  # Ignore all executables not in the current architecture (except drmemory - x86 only)
  $binPath = 'bin64'
  if ([System.IntPtr]::Size -eq 8) {
    $binPath = 'bin'
  }
  Set-Content -Path ("$installDir\$version\$binPath\drconfig.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\$binPath\drstrace.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\$binPath\vs_external_tool.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\$binPath\symquery.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\$binPath\winsyms.exe.ignore") -Value $null
  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
