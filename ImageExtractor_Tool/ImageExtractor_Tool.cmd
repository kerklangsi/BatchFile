@echo off
setlocal enabledelayedexpansion
title Image Extractor Tool

:extract_start
cls
echo ================================================================
echo                     Check for FFmpeg
echo ================================================================
for /f "delims=" %%F in ('where ffmpeg 2^>nul') do set found_ffmpeg=1
if not defined found_ffmpeg (
    echo Installing FFmpeg...
    winget install "FFmpeg" --silent --accept-package-agreements --accept-source-agreements
    echo FFmpeg installed successfully.
    echo Please restart the batch file to update PATH.
    timeout /t 2 /nobreak >nul
    goto extract_options
) else (
    echo FFmpeg is already installed. Skipping installation.
    timeout /t 2 /nobreak >nul
)
set found_ffmpeg=

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