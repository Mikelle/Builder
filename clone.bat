if "%running%"=="" goto :EOF
echo Cloning...
%GitPath% clone %RepositoryURL% %RepositoryPath%\%RepositoryName% 
if ERRORLEVEL 1 (
	set CloningSucceeded=false
	echo Cloning failed
	goto :EOF
	)

echo Cloning succeeded
