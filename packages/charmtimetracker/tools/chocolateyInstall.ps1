$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'charmtimetracker' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/KDAB/Charm/releases/download/1.10.0/Charm.1.10.0.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    ='/S'
  validExitCodes= @(0)

  softwareName  = 'Charm'
}

Install-ChocolateyPackage @packageArgs
