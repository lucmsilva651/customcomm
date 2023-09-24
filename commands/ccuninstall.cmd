@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

chcp 65001 > nul
del %SystemRoot%\back.cmd & del %SystemRoot%\nav.cmd & del %SystemRoot%\cchelp.cmd & del %SystemRoot%\ccver.cmd & del %SystemRoot%\ln.cmd & del %SystemRoot%\display.cmd & del %SystemRoot%\ls.cmd & del %SystemRoot%\ls.cmd & del %SystemRoot%\clear.cmd
echo.

echo #ccuninstall > %SystemDrive%\ccuninstall.log
for /f "delims=" %%a in ('wmic os get LocalDateTime ^| find "."') do set datetime=%%a
set datetime=%datetime:~0,14%
set datetime=%datetime:~0,4%/%datetime:~4,2%/%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%
echo Uninstalled at %datetime% >> %SystemDrive%\ccuninstall.log
echo The uninstaller cannot be deleted. >> %SystemDrive%\ccuninstall.log
echo Run "del %SystemRoot%\ccuninstall.cmd" >> %SystemDrive%\ccuninstall.log

echo The uninstaller cannot be deleted.
echo Run "del %SystemRoot%\ccuninstall.cmd"
echo.
pause
exit