@echo off
if "%running%"=="" goto :EOF
echo Cleaning started...
rmdir /s /q %RepositoryPath%\%RepositoryName%
echo Cleaning completed

