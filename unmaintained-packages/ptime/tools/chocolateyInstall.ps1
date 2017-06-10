$ErrorActionPreference = 'Stop';

$packageName= 'ptime'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.pc-tools.net/files/win32/freeware/ptime-10.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = 'F64612CE77498F75804A5168517D18F80913A542C8FAA875F871F0D1A79EEAE3'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
