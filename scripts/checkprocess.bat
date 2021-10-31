@ECHO OFF
:B
SET MyProcess=UE4Server-Win64-Shipping
ECHO "%MyProcess%"
TASKLIST | FINDSTR /I "%MyProcess%"
IF ERRORLEVEL 1 (GOTO :StartScripts) ELSE (ECHO "%MyProcess%" is running just fine)
TIMEOUT 60
GOTO :B 

:StartScripts 
::: //-- Put in the full path to the batch scripts to call
::: //-- Be sure the security context this process runs as has access to execute the below called batch scripts
START /B C:\Satisfactory\FactoryServer.exe -unattended -log
TIMEOUT 5
GOTO :B 