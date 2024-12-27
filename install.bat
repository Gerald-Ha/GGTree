@echo off
REM Install script for ggtree on Windows

REM Define the target directory for the binary
SET BIN_DIR=%USERPROFILE%\AppData\Local\Programs\ggtree
SET SCRIPT_NAME=ggtree.bat

REM Create the target directory if it doesn't exist
IF NOT EXIST "%BIN_DIR%" (
    mkdir "%BIN_DIR%"
)

REM Copy the Python script to the target directory
COPY ggtree.py "%BIN_DIR%\" >nul

REM Create a batch wrapper to call the Python script
(
    echo @echo off
    echo python "%BIN_DIR%\ggtree.py" %%*
) > "%BIN_DIR%\%SCRIPT_NAME%"

REM Add the target directory to the PATH
SETX PATH "%PATH%;%BIN_DIR%" /M >nul

echo "GGTree wurde erfolgreich installiert."
echo "Starte ein neues CMD-Fenster und verwende den Befehl 'ggtree' von überall."
