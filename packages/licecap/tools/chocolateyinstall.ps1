$ErrorActionPreference = 'Stop';

$packageName = 'licecap'
$url = 'http://www.cockos.com/licecap/licecap125-install.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url

  silentArgs    ='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
