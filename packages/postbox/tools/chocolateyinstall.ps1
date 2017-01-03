$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/download.getpostbox.com/installers/5.0.9/1_53cd26fb086aa4cbab01f5340f7dedad52bfc2ba/postbox-5.0.9-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Postbox*'

  checksum      = '288C1C5AA89B786E20CC4A3ADC6F2C28701421246B8A2A738CB271B5CA91AEF6'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
