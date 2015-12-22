$ErrorActionPreference = 'Stop';

$packageName= 'postbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/download.getpostbox.com/installers/4.0.8/1_6adf8a6160ac58891fe0f1b1485534368a9837ca/postbox-4.0.8-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
