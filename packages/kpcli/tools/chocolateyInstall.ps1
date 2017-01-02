$ErrorActionPreference = 'Stop';

$packageName= 'kpcli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = join-path $toolsDir 'kpcli.exe'
$url        = 'https://sourceforge.net/projects/kpcli/files/kpcli-3.1.exe/download'

$checksum      = 'B813C97A1CBF2B515B0ED6C7D027B683D483C9C1CD340A32781486E961817A20'
$checksumType  = 'sha256'

Get-ChocolateyWebFile $packageName "$installFile" "$url" -checksum $checksum -checksumType $checksumType
