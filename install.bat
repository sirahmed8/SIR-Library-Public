@echo off
setlocal enabledelayedexpansion
title Installing SIR Library Archival & Circulation Suite - SIR Ecosystem
color 0A

echo =========================================================================
echo   SIR Library Archival & Circulation Suite
echo   SIR Official Production Desktop Application
echo =========================================================================
echo.
echo [1/3] Verifying environment & integrity...

if not exist "%CD%\SIR Library-Setup-1.0.0.exe" (
    color 0C
    echo [ERROR] Application binary "SIR Library-Setup-1.0.0.exe" was not found in this folder.
    echo Please make sure all files were extracted properly from the zip archive.
    echo.
    pause
    exit /b 1
)

echo [OK] Verified SIR Library-Setup-1.0.0.exe.
echo [2/3] Launching installer: "SIR Library-Setup-1.0.0.exe"...
start "" "%CD%\SIR Library-Setup-1.0.0.exe"

echo [3/3] Installation initiated successfully.
echo.
echo Thank you for using SIR Library Archival & Circulation Suite.
echo.
timeout /t 3 >nul
exit /b 0
