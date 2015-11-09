@echo off
if "%running%"=="" goto :EOF

set EmailBody=Build succeeded. All tests passed.
 
if %BuildSucceeded%==false set EmailBody=Build failed.

%MailSendPath%\mailsend1.18.exe -to %EmailReceiver% -from %EmailReceiver% -ssl -port 465 -auth -smtp smtp.mail.ru -sub "%EmailBody%" +cc +bc -v -user dfgfdgd.2013 -pass "qwerty12" <msbuild.txt