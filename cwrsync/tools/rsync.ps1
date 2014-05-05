$currentDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$env:Path =  "$currentDir\\cwRsync_5.3.0_Free;" + $env:Path
& "$currentDir\cwRsync_5.3.0_Free\rsync.exe" $args
