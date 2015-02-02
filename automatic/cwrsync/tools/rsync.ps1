$currentDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$env:Path =  "$currentDir\\cwRsync_5.4.1_x86_Free;" + $env:Path
& "$currentDir\cwRsync_5.4.1_x86_Free\rsync.exe" $args
