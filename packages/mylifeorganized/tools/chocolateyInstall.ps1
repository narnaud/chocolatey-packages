$ErrorActionPreference = 'Stop';

$packageName= 'mylifeorganized'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.mylifeorganized.net/downloads/files/MLO-Setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'MyLifeOrganized*'

  checksum      = '3E04E9F99356A6D7A9E3632F7D47677A39EC0CF4EF3F0D9CEEABA47DC98CC84D'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}
Install-ChocolateyPackage @packageArgs
