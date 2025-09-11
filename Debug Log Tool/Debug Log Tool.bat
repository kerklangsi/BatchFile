::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wKB5aaxXrQgAz6VpNuWi5E8KepgihZkeOpn8/FGk6jmDf7A==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wKB5aaxXrQgAz6VpNuWi5E8KepgihZkeOpn8/FGk6gnvV7A==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion
title Debug Log Tool

:Start
cls
echo ===============================================================
echo                   DEBUG LOG TOOL
echo ===============================================================
echo Select the BAT file to run (full path, quotes optional):
set /p "target_bat=Path to target BAT file: "
set "target_bat=%target_bat:"=%"

echo Check if file exists
if not exist "%target_bat%" (
    echo.
    echo ERROR: File not found: %target_bat%
    pause
    goto Start
)

timeout /t 2 /nobreak >nul
cls
echo ===============================================================
echo 		Generate timestamped log file
echo ===============================================================
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
    set mm=%%b
    set dd=%%c
    set yyyy=%%d
)
for /f "tokens=1-3 delims=:." %%a in ("%time%") do (
    set hh=%%a
    set min=%%b
    set sec=%%c
)
set "datetime=%yyyy%%mm%%dd%_%hh%%min%%sec%"
set "logfile=%~dp0DebugLog_%datetime%.txt"

echo Date/Time: %datetime%
echo Log file path: %logfile%

timeout /t 2 /nobreak >nul
cls
echo ===============================================================
echo 		Path to tee.exe (update if needed)
echo ===============================================================
set "tee_path=C:\Program Files (x86)\GnuWin32\bin\tee.exe"

if not exist "%tee_path%" (
    echo.
    echo ERROR: tee.exe not found at "%tee_path%"
    echo Please download GnuWin32 CoreUtils to get tee.exe:
    echo https://sourceforge.net/projects/gnuwin32/
    echo.
    pause
    exit /b
)
echo tee.exe found at: "%tee_path%"

timeout /t 2 /nobreak >nul
cls
echo ===============================================================
echo               RUNNING DEBUG SESSION
echo ===============================================================
echo Target BAT file: "%target_bat%"
echo Log file: "%logfile%"
echo ===============================================================
echo.
echo Loading Bat Files

timeout /t 2 /nobreak >nul
cls
call "%target_bat%" 2>&1 | "%tee_path%" "%logfile%"

timeout /t 2 /nobreak >nul
cls
echo ===============================================================
echo                 SESSION COMPLETED
echo ===============================================================
echo Full log saved to:
echo "%logfile%"
echo ===============================================================
echo.
timeout /t 2 /nobreak >nul

:AskAgain
cls
echo ===============================================================
echo                    ANOTHER DEBUG SESSION
echo ===============================================================
echo [1] Run another debug session
echo [2] Exit
echo ===============================================================
set /p "again=Choose an option (1-2): "

if "%again%"=="1" goto Start
if "%again%"=="2" exit /b

echo please enter option value
timeout /t 2 /nobreak >nul
goto AskAgain