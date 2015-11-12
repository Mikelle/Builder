if "%running%"=="" goto :EOF


if %CloningSucceeded%==false (
	set EmailBody=Cloning repository was failed
	goto :clonefailed
)
if %CheckSucceeded%==false set EmailBody=Failed, %MissingFile% was not found
if %BuildSucceeded%==false set EmailBody=Build failed

%MailSendPath%\mailsend1.18.exe -to %EmailReceiver% -from %EmailReceiver% -ssl -port 465 -auth -smtp %EmailPost% -sub "%EmailBody%" +cc +bc -v -user %User% -pass %Password% -attach %BuildLog% -M "%EmailBody%"
goto :EOF

:clonefailed
%MailSendPath%\mailsend1.18.exe -to %EmailReceiver% -from %EmailReceiver% -ssl -port 465 -auth -smtp %EmailPost% -sub "%EmailBody%" +cc +bc -v -user %User% -pass %Password% -attach %CloneLog% -M "%EmailBody%"

