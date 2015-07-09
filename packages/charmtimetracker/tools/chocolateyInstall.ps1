$packageName = 'charmtimetracker'
$installerType = 'exe'
$url = 'https://github.com/KDAB/Charm/releases/download/1.9.0/Charm.1.9.0.exe'
$silentArgs = '/S'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
