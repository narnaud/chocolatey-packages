@ECHO OFF
 
SETLOCAL
 
SET RSYNC_HOME=%chocolateyInstall%\lib\cwrsync\tools\cwrsync\bin
SET PATH=%RSYNC_HOME%;%PATH%

IF NOT DEFINED HOME SET HOME=%USERPROFILE%
 
rsync %*
