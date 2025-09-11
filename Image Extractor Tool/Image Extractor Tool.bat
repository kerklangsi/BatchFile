::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wJRZZeRfrSxcgu29BomuXd/OTvAPdY0WI4U5wPn1glWLTmCQpIOdnlc9N2iOxnA==
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
::Zh4grVQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wJRZZeRfrSxcgu29BomuXd/OTvAPdY0WI4U5wPn1glWLTmCQpIOdnlc9N1ji7nA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion
title Image Extractor Tool

:extract_start
cls
set "choice="
set "video="
set "outdir="
set "fps="
set "basename="

cls
echo ================================================================
echo                       IMAGE EXTRACTOR
echo ================================================================
echo Blank input will return to main menu or drag file here
echo.

set /p "video=Enter full path to video file: "
set /p "outdir=Enter full path to output folder: "
set /p "fps=Enter FPS to extract: "

if not "!video!"=="" set "video=!video:"=!"
if not "!outdir!"=="" set "outdir=!outdir:"=!"
if not "!fps!"=="" set "fps=!fps:"=!"

if not "!video!"=="" for %%F in ("!video!") do set "basename=%%~nF"

cls
echo ================================================================
echo                            REVIEW
echo ================================================================
echo Video file:    "!video!"
echo Output folder: "!outdir!"
echo FPS:           !fps!
echo Base name:     !basename!
echo Example file:  "!outdir!\!basename!_0001.png"
echo ================================================================
timeout /t 2 /nobreak >nul

:extract_options
set "choice="
cls
echo ================================================================
echo                        EXTRACTION OPTIONS
echo ================================================================
echo [1] Start extraction
echo [2] Change inputs
echo [3] Exit
echo ================================================================
set /p "choice=Choose an option (1-3): "

if "%choice%"=="1" (
    if "!video!"=="" goto extract_start
    if "!outdir!"=="" goto extract_start
    if "!fps!"=="" goto extract_start

    if not exist "!outdir!" mkdir "!outdir!"

    cls
    echo ================================================================
    echo                        RUN FFMPEG
    echo ================================================================
    timeout /t 2 /nobreak >nul
    ffmpeg -i "!video!" -vf fps=!fps! "!outdir!\!basename!_%%04d.png"
    echo.

    echo Extraction complete!
    timeout /t 2 /nobreak >nul
    goto extract_options2
)

if "%choice%"=="2" goto extract_start
if "%choice%"=="3" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto extract_options

:extract_options2
set "choice="
cls
echo ================================================================
echo                        EXTRACTION OPTIONS
echo ================================================================
echo [1] Change inputs
echo [2] Exit
echo ================================================================
set /p "choice=Choose an option (1-2): "

if "%choice%"=="1" goto extract_start
if "%choice%"=="2" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto extract_options2