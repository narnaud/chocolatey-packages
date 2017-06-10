$ErrorActionPreference = 'Stop';

$packageName= 'jpegtran'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://jpegclub.org/jpegtran.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '65679E6BE6C8E814976E636DB7759D37C1604DBB511D71D846A2F625BDA14F15'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
