$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/stefansundin/altdrag/releases/download/v1.1/AltDrag-1.1.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '8B2DB17BC274DD9EC5135FCD316A1E22F97A59E3DCB36B2CF457505D3E2DA703'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltDrag'
}

Install-ChocolateyPackage @packageArgs
