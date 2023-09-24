@echo off
chcp 65001 > nul
echo.
echo CustomComm - Q3 2023
echo By Lucas Gabriel (lucmsilva)
echo.
echo Installed at: %~dp0
echo.
echo Help (cchelp, ccver):
echo   Commands:
echo     - ccuninstall - Uninstall CustomComm.
echo     - cchelp - Help command.
echo     - ccver - Help command. Same as "cchelp".
echo     - ls - List files in the directory. Usage: ls ^<folder^>
echo     - back - Go to the parent folder.
echo     - clear - Clear the terminal.
echo     - display - Display the text of a file. Usage: display ^<file^>
echo     - nav - Browse folders. Usage: nav ^<folder^>
echo     - ln - Creates a symbolic link. Usage: ln ^<file^>
echo     - cp - Copy files. Usage: cp ^<file^> ^<destination^>
echo     - mv - Move files and folders. Usage: mv ^<file/folder^> ^<destination^>
echo     - rn - Rename files. Usage: rn ^<file^> ^<newname^>
echo     - rm - Remove files. Usage: rm ^<file^>
echo     - crdir - Creates directories. Usage: crdir ^<folder name^>
echo     - chk - Verify if a file or a folder exists.
