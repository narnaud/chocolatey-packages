$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = '{{DownloadUrl}}' # download url
$url64      = '{{DownloadUrlx64}}' # 64bit URL here or remove - if installer is both, use $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64

  silentArgs   = '/S'           # NSIS

  softwareName  = 'AltDrag' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
}

Install-ChocolateyPackage @packageArgs
