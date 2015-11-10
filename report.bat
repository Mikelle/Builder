if "%running%"=="" goto :EOF

set EmailBody=Build succeeded.
if %CloningSucceeded%==false set EmailBody=Cloning repository was failed
if %CheckSucceeded%==false set EmailBody=Failed, not all files was found
if %BuildSucceeded%==false set EmailBody=Build failed

%MailSendPath%\mailsend1.18.exe -to %EmailReceiver% -from %EmailReceiver% -ssl -port 465 -auth -smtp smtp.mail.ru -sub "%EmailBody%" +cc +bc -v -user dfgfdgd.2013 -pass "qwerty12" -attach "msbuild.txt" -M "%EmailBody%"
