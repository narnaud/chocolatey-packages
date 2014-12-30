$packageName = 'cwrsync'
$version = 'cwRsync_5.4.1_x86_Free'
$url = 'https://www.itefix.net/dl/cwRsync_5.4.1_x86_Free.zip'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  # Unzip cwrsync zip, but ignore all executables
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
  Set-Content -Path ("$installDir\$version\ssh.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\ssh-keygen.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$version\rsync.exe.ignore") -Value $null

  # Install a script that add path to rsync executables before launching it
  Install-ChocolateyPowershellCommand "$packageName" "$installDir\rsync.ps1"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
