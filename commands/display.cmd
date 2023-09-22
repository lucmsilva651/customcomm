@echo off
if "%~1"=="" (
    echo Uso: display arquivo.txt
) else (
    set filename=%~1
    echo File name: %filename%
    for %%A in (%filename%) do set size=%%~zA
    echo Size: %size% bytes
    echo.
    type "%filename%"
)
