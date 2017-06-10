$packageName = 'drmemory.install'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'

try {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
  
  $programFiles = $Env:ProgramFiles
  if ([System.IntPtr]::Size -eq 8) {
      $programFiles = ${Env:ProgramFiles(x86)}
  }
  $binDir = join-path $programFiles "Dr. Memory/bin"
  Install-ChocolateyPath "$binDir"
  
  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
