$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Uninstall-BinFile -Name rsync -Path $toolsDir\rsync.bat
