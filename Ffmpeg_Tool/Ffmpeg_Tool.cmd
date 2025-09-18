@echo off
setlocal enabledelayedexpansion
title Install/unistall Ffmpeg Tool

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
    where ffmpeg >nul 2>&1
    if %errorlevel%==0 (
        echo FFmpeg is already installed. Skipping installation.
    ) else (
        echo Installing FFmpeg...
        winget install FFmpeg --silent --accept-package-agreements --accept-source-agreements
        echo FFmpeg installed successfully.
        echo Please restart the bat.
    )
    timeout /t 2 /nobreak >nul
    goto ffmpeg_options
)
if "%choice%"=="2" (
    where ffmpeg >nul 2>&1
    if %errorlevel% neq 0 (
        echo FFmpeg is not installed. Skipping uninstallation.
    ) else (
        echo Uninstalling FFmpeg...
        winget uninstall ffmpeg --silent
        echo Please restart the bat.
    )
    timeout /t 2 /nobreak >nul
    goto ffmpeg_options
)
if "%choice%"=="3" (
    where ffmpeg >nul 2>&1
    if %errorlevel% neq 0 (
        echo FFmpeg is not installed.
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

echo please enter option value.
timeout /t 2 /nobreak >nul
goto ffmpeg_options
