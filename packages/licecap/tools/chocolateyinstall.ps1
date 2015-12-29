$ErrorActionPreference = 'Stop';

$packageName= 'licecap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.cockos.com/licecap/licecap126-install.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'

  softwareName  = 'licecap*'
}

Install-ChocolateyPackage @packageArgs
