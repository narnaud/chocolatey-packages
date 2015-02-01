$packageName = 'mpv'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
