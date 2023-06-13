@echo off
echo Configuring File Sharing...

rem Enable file sharing
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

rem Create a shared folder
echo Creating shared folder...
mkdir C:\SharedFolder
echo Shared folder created.

rem Set share permissions
echo Setting share permissions...
icacls C:\SharedFolder /grant Everyone:(OI)(CI)F
echo Share permissions set.

rem Add the folder to the shared list
echo Adding folder to shared list...
net share SharedFolder=C:\SharedFolder /grant:Everyone,FULL
echo Folder added to shared list.

echo File sharing configuration completed.

pause
