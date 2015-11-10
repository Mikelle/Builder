if "%running%"=="" goto :EOF
echo Build Started...
%MSBuildPath%\MSBuild.exe %RepositoryPath%\%RepositoryName%\%solution% /p:Configuration=Release;VisualStudioVersion=15.0 > %BuildLog%
if ERRORLEVEL 1 (
	set BuildSucceeded=false
	echo Build failed
	goto :EOF
	)
echo Build Completed
