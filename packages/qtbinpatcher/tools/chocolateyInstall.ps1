$packageName = 'qtbinpatcher'
$url = 'http://www.tver-soft.org/component/phocadownload/category/13-qtbinpatcher211?download=69:qtbinpatcher-211-win-x86'
$url64 = 'http://www.tver-soft.org/component/phocadownload/category/13-qtbinpatcher211?download=67:qtbinpatcher-211-win-x64'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
