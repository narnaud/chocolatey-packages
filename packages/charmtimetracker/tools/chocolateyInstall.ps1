$packageName = 'charmtimetracker'
$installerType = 'exe'
$url = 'http://www.kdab.com/~frank/Charm/Charm%201.8.0.exe'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
