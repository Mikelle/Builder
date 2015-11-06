@echo off
if "%running%"=="" goto :EOF
echo Cloning...
%GitPath% clone %RepositoryURL% %RepositoryPath%\%RepositoryName% > %CloneLog%
if ERRORLEVEL 1 goto :failed 
echo Cloning succeeded
goto :EOF

:failed
set CloningSucceeded=false
echo Cloning failed