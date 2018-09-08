@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\aptech-php-14-vuma\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\ingres\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\mysql\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\postgresql\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\apache\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\apache\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\openoffice\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\apache-tomcat\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\resin\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\resin\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\jboss\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\jetty\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\aptech-php-14-vuma\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\lucene\scripts\ctl.bat START)
if exist C:\aptech-php-14-vuma\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\aptech-php-14-vuma\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\third_application\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\aptech-php-14-vuma\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\subversion\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\jetty\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\jboss\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\jboss\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\resin\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\resin\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\aptech-php-14-vuma\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\openoffice\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\apache\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\apache\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\ingres\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\mysql\scripts\ctl.bat STOP)
if exist C:\aptech-php-14-vuma\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\aptech-php-14-vuma\xampp\postgresql\scripts\ctl.bat STOP)

:end

