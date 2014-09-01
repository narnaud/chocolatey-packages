$packageName = 'todoist'
$url = 'https://d2dq6e731uoz0t.cloudfront.net/67f363ef3a26f18de12beb9ae83636c5/as/Todoist_for_Windows.exe'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyPackage "$packageName" 'EXE' ' /VERYSILENT' "$url"
