

@echo off
echo Configuring IP and File Sharing...

rem Configure IP address
echo Configuring IP address...
netsh interface ip set address name="Ethernet" source=dhcp
echo IP address configured.

rem Enable file sharing
echo Enabling file sharing...
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
echo File sharing enabled.

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

echo IP configuration and file sharing completed.

rem Pause for 5 seconds and then close the window
ping 127.0.0.1 -n 6 > nul

exit






















