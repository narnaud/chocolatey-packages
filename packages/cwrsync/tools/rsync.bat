@ECHO OFF
 
SETLOCAL
 
SET RSYNC_HOME=%chocolateyInstall%\lib\cwrsync\tools\cwRsync_5.4.1_x86_Free
SET PATH=%RSYNC_HOME%;%PATH%

IF NOT DEFINED HOME SET HOME=%USERPROFILE%
 
rsync %*
