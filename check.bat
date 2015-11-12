if "%running%"=="" goto :EOF
echo Checking build libs...

for /F "tokens=*" %%i in (%FileList%) do (
		if not exist "%BuildLocation%\%%i" (
			set CheckSucceeded=false
			set MissingFile=%%i
			echo Checking failed
			goto :EOF
		)
	)

echo Checking complete
