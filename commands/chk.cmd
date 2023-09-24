@echo off
setlocal enabledelayedexpansion

set /p target="Enter the name of the file or folder: "

if exist "!target!" (
    if exist "!target!\*" (
        echo.
        echo The directory or folder !target! exists.
    ) else (
        echo.
        echo The file !target! exists.
    )
) else (
    echo.
    echo The file or folder !target! does NOT exist.
)

endlocal
