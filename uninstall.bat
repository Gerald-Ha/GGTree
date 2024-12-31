@echo off



set BIN_DIR=%USERPROFILE%\AppData\Local\Programs\ggtree
set SCRIPT_NAME=ggtree.py
set WRAPPER_NAME=ggtree.bat


if exist "%BIN_DIR%" (
    echo Removing files from %BIN_DIR%
    

    if exist "%BIN_DIR%\%SCRIPT_NAME%" (
        del "%BIN_DIR%\%SCRIPT_NAME%"
        echo Deleted %SCRIPT_NAME%.
    )
    if exist "%BIN_DIR%\%WRAPPER_NAME%" (
        del "%BIN_DIR%\%WRAPPER_NAME%"
        echo Deleted %WRAPPER_NAME%.
    )
    

    rd "%BIN_DIR%" >nul 2>&1
    if errorlevel 1 (
        echo Could not remove %BIN_DIR%. Please ensure it is empty.
    ) else (
        echo Removed %BIN_DIR%.
    )
) else (
    echo Installation directory %BIN_DIR% does not exist. Nothing to uninstall.
)

echo ggtree has been uninstalled.
pause
exit
