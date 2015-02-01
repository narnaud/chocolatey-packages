$packageName = 'altdrag'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
