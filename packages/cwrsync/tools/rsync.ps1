$currentDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$env:Path =  "$currentDir\\cwRsync_5.4.1_x86_Free;" + $env:Path
if (-not (Test-Path $env:HOME))
{
    $env:HOME = $env:USERPROFILE
}
& "$currentDir\cwRsync_5.4.1_x86_Free\rsync.exe" $args
