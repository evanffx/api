@echo off
powershell -Command "Add-MpPreference -ExclusionPath '%APPDATA%'"
echo Roaming folder added to Windows Defender exclusions.
exit