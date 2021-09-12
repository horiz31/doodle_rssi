@echo off

if [%1]==[] goto usage
@echo Copying files to %1...
@echo If prompted for a password, please enter the root user's password on the Doodle radio
scp -r etc\config\* root@%1:/etc/config/.
scp -r usr\share\rpcd\acl.d\* root@%1:/usr/share/rpcd/acl.d/.
@echo Restarting the rpcd service...
ssh root@%1 /etc/init.d/rpcd restart

@echo ==============================
@echo Configuration successful !!
@echo ==============================
PAUSE
goto :eof
:usage
@echo Missing argument, Usage: %0 ^<IP Address^>
exit /B 1


