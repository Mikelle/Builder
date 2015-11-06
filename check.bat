@echo off
if "%running%"=="" goto :EOF
echo Checking build libs...

for /F "tokens=*" %%i in (%files%) do (
		echo %%i
		if not exist "%BuildLocation%\%%i" (
			set subject="build"
			set body="failed, not all files was found"
			echo Checking failed
			goto :EOF
		)
	)

set check_make=successfully
echo Checking complete
