$ErrorActionPreference = 'Stop';

$packageName= 'licecap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.cockos.com/licecap/licecap126-install.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'licecap*'

  checksum      = '2FF9936E444EE3156E510F822551333A70131E0EB40169D3603BC41D8D56F9D1'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
