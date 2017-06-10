$ErrorActionPreference = 'Stop';

$packageName= 'wunderlist'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.wunderlist.com/download/windows7'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/S'

  softwareName  = 'Wunderlist*'
}

Install-ChocolateyPackage @packageArgs
