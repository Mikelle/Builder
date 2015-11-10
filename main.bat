@echo off
set running=true

call clean.bat
call settings.bat
call clone.bat
if %CloningSucceeded%==false goto :report	
call build.bat
if %BuildSucceeded%==false goto :report
call check.bat

:report
call report.bat
