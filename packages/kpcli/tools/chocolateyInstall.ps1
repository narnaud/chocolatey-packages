$packageName = 'kpcli'
$url = 'http://sourceforge.net/projects/kpcli/files/kpcli-2.7.exe/download'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = join-path $installDir 'kpcli.exe'

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
