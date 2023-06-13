@echo off
set /p ip_address=Enter the IP address of the first computer: 

echo Accessing Shared Folder...

rem Access shared folder
echo Opening shared folder...
start "" "\\%ip_address%\SharedFolder"

echo Shared folder accessed.

rem Pause for 5 seconds and then close the window
ping 127.0.0.1 -n 6 > nul

exit
