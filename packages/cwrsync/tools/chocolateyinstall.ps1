$ErrorActionPreference = 'Stop';

$packageName= 'cwrsync'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipDir = 'cwRsync_5.4.1_x86_Free'
$url        = 'https://www.itefix.net/dl/cwRsync_5.4.1_x86_Free.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

# Ignore all executables
Set-Content -Path ("$toolsDir\$zipDir\ssh.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\$zipDir\ssh-keygen.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\$zipDir\rsync.exe.ignore") -Value $null

# Install a script that add path to rsync executables before launching it
Install-ChocolateyPowershellCommand "$packageName" "$toolsDir\rsync.ps1"
