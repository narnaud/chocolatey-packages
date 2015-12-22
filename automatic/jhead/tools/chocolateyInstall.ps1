$ErrorActionPreference = 'Stop';

$packageName= 'jhead'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = '{{DownloadUrl}}'
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile $packageName $installFile $url
