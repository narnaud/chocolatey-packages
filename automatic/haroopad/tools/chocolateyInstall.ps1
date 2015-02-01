$packageName = 'haroopad'
$installerType = 'MSI'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/qb'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"
