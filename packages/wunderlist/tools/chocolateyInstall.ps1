$packageName = 'wunderlist'
$installerType = 'msi'
$url = 'https://www.wunderlist.com/download/windows7'
$silentArgs = '/quiet'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
