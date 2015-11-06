@echo off
set running=true

call clean.bat
call settings.bat
call clone.bat
call build.bat
call check.bat