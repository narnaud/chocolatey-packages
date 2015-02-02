$packageName = 'cwrsync'
$zipDir = 'cwRsync_{{PackageVersion}}_x86_Free'
$url = '{{DownloadUrl}}'

# main helpers - these have error handling tucked into them already
# installer, will assert administrative rights
# if removing $url64, please remove from here
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
# download and unpack a zip file
# if removing $url64, please remove from here

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  # Unzip cwrsync zip
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"
  
  # Ignore all executables
  Set-Content -Path ("$installDir\$zipDir\ssh.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$zipDir\ssh-keygen.exe.ignore") -Value $null
  Set-Content -Path ("$installDir\$zipDir\rsync.exe.ignore") -Value $null

  # Install a script that add path to rsync executables before launching it
  Install-ChocolateyPowershellCommand "$packageName" "$installDir\rsync.ps1"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
