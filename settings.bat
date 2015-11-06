@echo off
if "%running%"=="" goto :EOF

set CloningSucceeded=true
set BuildSucceeded=true
set CloneLog=clone.txt
set BuildLog=msbuild.txt

set GitPath="C:\Program Files (x86)\Git\bin\git.exe"
set MSBuildPath="C:\Windows\Microsoft.NET\Framework\v4.0.30319"
set FileList=files.txt

set RepositoryPath="C:\Test"
set RepositoryName=Circles
set RepositoryURL=http://github.com/SeriousCoder/%RepositoryName%

set Solution=Circles.sln
set BuildLocation="%RepositoryPath%\%RepositoryName%\Circles\bin\Release"