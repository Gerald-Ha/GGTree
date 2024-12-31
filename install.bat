@echo off



SET BIN_DIR=%USERPROFILE%\AppData\Local\Programs\ggtree
SET SCRIPT_NAME=ggtree.bat


IF NOT EXIST "%BIN_DIR%" (
    mkdir "%BIN_DIR%"
)


COPY ggtree.py "%BIN_DIR%\" >nul


(
    echo @echo off
    echo python "%BIN_DIR%\ggtree.py" %%*
) > "%BIN_DIR%\%SCRIPT_NAME%"


SETX PATH "%PATH%;%BIN_DIR%" /M >nul

echo "GGTree has been successfully installed."
echo "Start a new CMD window and use the command 'ggtree' from anywhere."
