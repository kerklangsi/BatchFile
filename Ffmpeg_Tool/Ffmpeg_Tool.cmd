@echo off
setlocal enabledelayedexpansion
title Install/uninstall Ffmpeg Tool

:ffmpeg_options
set "choice="
cls
echo ================================================================
echo               INSTALL / UNINSTALL FFMPEG
echo ================================================================
echo [1] Install FFmpeg
echo [2] Uninstall FFmpeg
echo [3] Check FFmpeg version
echo [4] Exit
echo ================================================================
set /p choice=Choose an option (1-4): 

if "%choice%"=="1" (
    for /f "delims=" %%F in ('where ffmpeg 2^>nul') do set found_ffmpeg=1
    if not defined found_ffmpeg (
        echo Installing FFmpeg...
        winget install "FFmpeg" --silent --accept-package-agreements --accept-source-agreements
        echo FFmpeg installed successfully.
        echo Please restart the batch file to update PATH.
    ) else (
        echo FFmpeg is already installed. Skipping installation.
    )
    set found_ffmpeg=
    timeout /t 2 /nobreak >nul
    goto ffmpeg_options
)
if "%choice%"=="2" (
    for /f "delims=" %%F in ('where ffmpeg 2^>nul') do set found_ffmpeg=1
    if defined found_ffmpeg (
        echo Uninstalling FFmpeg...
        winget uninstall "ffmpeg" --silent
        echo Please restart the batch file to update PATH.
    ) else (
        echo FFmpeg is not installed. Skipping uninstallation.
    )
    set found_ffmpeg=
    timeout /t 2 /nobreak >nul
    goto ffmpeg_options
)
if "%choice%"=="3" (
    where ffmpeg >nul 2>&1
    if %errorlevel% neq 0 (
        echo FFmpeg is not installed or not in PATH.
        echo You may need to restart the command prompt after installation.
    ) else (
        cls
        echo ================================================================
        ffmpeg -version
        echo ================================================================
    )
    pause
    goto ffmpeg_options
)
if "%choice%"=="4" exit /b

rem Invalid input handling
 echo please enter a valid option (1-4).
 timeout /t 2 /nobreak >nul
 goto ffmpeg_options