$ErrorActionPreference = 'Stop';

$packageName= 'cwrsync'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.itefix.net/dl/cwRsync_5.5.0_x86_Free.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

$zipDir = (Get-Childitem -Path $toolsDir -Exclude chocolatey*)[0]
Rename-Item $zipDir -NewName (Join-Path $toolsDir cwrsync)

# Ignore all executables
Set-Content -Path ("$toolsDir\cwrsync\bin\ssh.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\cwrsync\bin\ssh-keygen.exe.ignore") -Value $null
Set-Content -Path ("$toolsDir\cwrsync\bin\rsync.exe.ignore") -Value $null

# Install a script that add path to rsync executables before launching it
Install-BinFile -Name rsync -Path $toolsDir\rsync.bat
