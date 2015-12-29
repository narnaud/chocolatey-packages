$ErrorActionPreference = 'Stop';

$packageName= 'instantbird'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = '{{DownloadUrl}}'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'

  softwareName  = 'Instantbird*'
}

Install-ChocolateyPackage @packageArgs
