$packageName = 'drmemory.install'
$url = 'https://drmemory.googlecode.com/files/DrMemory-Windows-1.6.1-2.exe'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyPackage "$packageName" 'exe' '/S' "$url"
  
  $programFiles = if ($isSytem32Bit) { $Env:ProgramFiles } else { ${Env:ProgramFiles(x86)} }
  $binDir = join-path $programFiles "Dr. Memory/bin"
  Install-ChocolateyPath "$binDir"
  
  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

