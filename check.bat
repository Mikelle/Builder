if "%running%"=="" goto :EOF
echo Checking build libs...

for /F "tokens=*" %%i in (%files%) do (
		echo %%i
		if not exist "%BuildLocation%\%%i" (
			set CheckSucceeded=false
			echo Checking failed
			goto :EOF
		)
	)

echo Checking complete
