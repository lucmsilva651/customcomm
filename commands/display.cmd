@echo off
if "%~1"=="" (
    echo Use: display ^<file^>
) else (
    set filename=%~1
    echo.
    echo File name: %filename%
    for %%A in (%filename%) do set size=%%~zA
    echo Size: %size% bytes
    echo.
    type "%filename%"
    echo.
)
