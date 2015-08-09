$ErrorActionPreference = 'Stop';

$packageName = 'todoist'
$url = 'https://s3-us-west-1.amazonaws.com/windows.todoist.com/Todoist_for_Windows_2_7_2.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url

  silentArgs    ='/VERYSILENT'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
