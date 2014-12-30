$packageName = 'mpv'
$url = 'http://mpv.srsfckn.biz/mpv-i686-latest.7z'
$url64 = 'http://mpv.srsfckn.biz/mpv-x86_64-latest.7z'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"
