$ErrorActionPreference = 'Stop';

$packageName = 'charmtimetracker'
$url = 'https://github.com/KDAB/Charm/releases/download/1.9.0/Charm.1.9.0.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url

  silentArgs    ='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
