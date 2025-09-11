::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIKWu4weYvI5pKoLfAW7XrtdpkjmGlMn4UFDxQ4
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
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIZJghATQiOfH60D6YI6eT3r8yBr10YU6ILd4DXug==
::eg0/rx1wNQPfEVWB+kM9LVsJDC2ML3+7Crlc/eby/P6GrkFdcuQyaIrcmoCBL+xz
::fBEirQZwNQPfEVWB+kM9LVsJDC2ML3+7Crlc/eby/P6GrkFdcuQyaIrcmoCBL+xz
::cRolqwZ3JBvQF1fEqQIZJghATQiOfH60D6YI6eT3r8yBr10YU6ILd4DXug==
::dhA7uBVwLU+EWHellA==
::YQ03rBFzNR3SWATE2mNQ
::dhAmsQZ3MwfNWATE2mNQ
::ZQ0/vhVqMQ3MEVWAtB9wBjo0
::Zg8zqx1/OA3MEVWAtB9wBjo0
::dhA7pRFwIByZRRmq1SI=
::Zh4grVQjdCqDJFqL8EcMARVHWAWOMCuvCLwP/On346qhpEANUeV/TIDU1oinLvMH60noNYMj32lOmccATD1ecwKuaU8ApmFO+GGdMqc=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
        winget install ffmpeg
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
        winget uninstall ffmpeg
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