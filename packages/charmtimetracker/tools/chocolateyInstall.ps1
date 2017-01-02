$ErrorActionPreference = 'Stop';

$packageName= 'charmtimetracker'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/KDAB/Charm/releases/download/1.11.4/Charm.1.11.4.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Charm*'

  checksum      = 'FB87B15532E3505E6F1E5ED70486C4FEDB72589BACA377E8AB91A2A781F3FAD9'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
