$packageName = 'ActivePerl'
$fileType = 'MSI'
$binRoot = "$env:systemdrive\"

### Using an environment variable to to define the bin root until we implement YAML configuration ###
if($env:chocolatey_bin_root -ne $null){$binRoot = join-path $env:systemdrive $env:chocolatey_bin_root}
$silentArgs = "/quiet TARGETDIR=`"$binRoot`" PERL_PATH=Yes PERL_EXT=Yes"
$url = 'http://downloads.activestate.com/ActivePerl/releases/5.16.3.1603/ActivePerl-5.16.3.1603-MSWin32-x86-296746.msi'
$url64bit = 'http://downloads.activestate.com/ActivePerl/releases/5.16.3.1603/ActivePerl-5.16.3.1603-MSWin32-x64-296746.msi'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit
