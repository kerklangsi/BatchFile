::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wNTR0UVLtLiY5qGlH9kGdI9WdsBvuWAi96UQ8J1xbq0yQymsSbdJvn4MmyzSs/U7rkLdQ5XfwUucHFmyB
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
::Zh4grVQjdCqDJGmW+0UiKRYUag2OOXiGKbsZzPry+e+7hkIeQe86dpvI5pOHNMgG6HnGdIIu3lxTlM4wNTR0UVLtLiY5qGlH9kGdI9WdsBvuWAi96UQ8J1xbq0yQymsSbdJvn4MmyzSs/U7rkLdQ5XfwUucLDWaB
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion
title YOLO and Image Extractor Tool

:menu
set "choice="
cls
echo ================================================================
echo                       MAIN MENU
echo ================================================================
echo [1] Extract images from video
echo [2] Run YOLO training
echo [3] Install/Uninstall FFmpeg
echo [4] Exit
echo ================================================================
set /p "choice=Choose an option (1-4): "

if "%choice%"=="1" goto extract_start
if "%choice%"=="2" goto yolorunner
if "%choice%"=="3" goto ffmpeg_options
if "%choice%"=="4" goto end

echo please enter option value.
timeout /t 2 /nobreak >nul
goto menu

::======================== IMAGE EXTRACTOR ===========================

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
echo [2] Return to Main Menu
echo [3] Change inputs
echo [4] Exit
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

if "%choice%"=="2" goto menu
if "%choice%"=="3" goto extract_start
if "%choice%"=="4" exit /b

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
echo [2] Return to Main Menu
echo [3] Exit
echo ================================================================
set /p "choice=Choose an option (1-2): "

if "%choice%"=="1" goto extract_start
if "%choice%"=="2" goto menu
if "%choice%"=="3" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto extract_options2

::========================== YOLO RUNNER =============================

:yolorunner
cls
set "choice="
set "YNUM="
set "YMODEL="
set "ENVNAME="
set "RFLINK="
set "EPOCHS="
set "HOME="

cls
echo ================================================================
echo                        YOLO RUNNER
echo ================================================================

set "condaPath=%USERPROFILE%\anaconda3\Scripts\conda.exe"
if exist "%condaPath%" (
    echo Anaconda detected!
) else (
    echo Anaconda not found.
    echo Please download and install Anaconda from:
    echo https://www.anaconda.com/download/success
    timeout /t 5 /nobreak >nul
    exit /b
)

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                        YOLO TRAINING
echo ================================================================
echo Example: enter 11 for YOLO11, 8 for YOLO8
set /p YNUM=Enter YOLO version number: 
set YMODEL=yolo%YNUM%s.pt
set ENVNAME=yolov%YNUM%

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                      Activate Conda
echo ================================================================
call "%USERPROFILE%\anaconda3\Scripts\activate.bat"

call conda env list | findstr /C:"%ENVNAME%"
if %errorlevel% neq 0 (
    echo Creating conda environment %ENVNAME% ...
    call conda create -n %ENVNAME% python=3.13.5 -y
)

call conda activate %ENVNAME%

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                     Install dependencies
echo ================================================================
echo Checking dependencies (skip if already installed)...

python -m pip show ultralytics >nul 2>&1
if %errorlevel% neq 0 (
    echo Installing ultralytics, supervision, roboflow...
    python -m pip install ultralytics supervision roboflow
) else (
    echo ultralytics already installed, skipping.
)

python -m pip show torch >nul 2>&1
if %errorlevel% neq 0 (
    echo Installing PyTorch...
    python -m pip install --upgrade torch torchvision --index-url https://download.pytorch.org/whl/cu129
) else (
    echo PyTorch already installed, skipping.
)

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                        Verify CUDA
echo ================================================================
python -c "import torch; print(torch.cuda.is_available(), torch.cuda.get_device_name(0))"

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                  Roboflow Dataset
echo ================================================================
echo If Roboflow dataset already downloaded, just press Enter.
set /p "RFLINK=Paste your Roboflow dataset download link: "

if not exist roboflow.zip (
    if not "!RFLINK!"=="" (
        echo Downloading dataset from Roboflow...
        curl -L "!RFLINK!" -o roboflow.zip
        tar -xf roboflow.zip
        del roboflow.zip
    )
)

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                         Set Epochs
echo ================================================================
set /p EPOCHS=Enter number of epochs to train (e.g. 50): 

timeout /t 2 /nobreak >nul
cls
echo ================================================================
echo                    Create train_yolo.py
echo ================================================================
echo create train_yolo.py file

echo import os > train_yolo.py
echo HOME = os.getcwd() >> train_yolo.py
echo print("HOME:", HOME) >> train_yolo.py
echo. >> train_yolo.py
echo # Turn off ultralytics telemetry >> train_yolo.py
echo os.system("yolo settings sync=False") >> train_yolo.py
echo os.system(f'yolo settings datasets_dir="{HOME}"') >> train_yolo.py
echo. >> train_yolo.py
echo DATA_YAML = os.path.join(HOME, "data.yaml") >> train_yolo.py
echo. >> train_yolo.py
echo os.system(f'yolo task=detect mode=train model=%YMODEL% data="{DATA_YAML}" epochs=!EPOCHS! imgsz=640 plots=True') >> train_yolo.py
echo os.system(f'yolo task=detect mode=val model="{HOME}/runs/detect/train/weights/best.pt" data="{DATA_YAML}"') >> train_yolo.py
echo os.system(f'yolo task=detect mode=predict model="{HOME}/runs/detect/train/weights/best.pt" conf=0.25 source="{HOME}/test/images" save=True') >> train_yolo.py
echo print("Training complete! Check the 'runs/detect' folder for results.") >> train_yolo.py

timeout /t 2 /nobreak >nul
echo succesful create train_yolo.py file
timeout /t 2 /nobreak >nul

:runtraining
set "choice="
cls
echo ================================================================
echo                    Confirm and Run Training
echo ================================================================
echo [1] Start YOLO training
echo [2] Back to YOLO runner
echo [3] Return to Main Menu
echo [4] Exit
echo ================================================================
set /p "choice=Choose an option (1-4): "

if "%choice%"=="1" (
    cls
    echo ================================================================
    echo 			Starting YOLO training...
    echo ================================================================
    python train_yolo.py
    timeout /t 2 /nobreak >nul
    goto runtraining
)
if "%choice%"=="2" (
    timeout /t 2 /nobreak >nul
    goto yolorunner
)
if "%choice%"=="3" goto menu
if "%choice%"=="4" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto runtraining

:runtraining2
cls
echo ================================================================
echo                    Confirm and Run Training
echo ================================================================
echo [1] Back to YOLO runner
echo [2] Return to Main Menu
echo [3] Exit
echo ================================================================
set /p "choice=Choose an option (1-3): "

if "%choice%"=="1" goto yolorunner
if "%choice%"=="2" goto menu
if "%choice%"=="3" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto runtraining2

::================= INSTALL / UNINSTALL FFMPEG ======================

:ffmpeg_options
set "choice="
cls
echo ================================================================
echo               INSTALL / UNINSTALL FFMPEG
echo ================================================================
echo [1] Install FFmpeg
echo [2] Uninstall FFmpeg
echo [3] Check FFmpeg version
echo [4] Return to Main Menu
echo [5] Exit
echo ================================================================
set /p choice=Choose an option (1-5): 

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
if "%choice%"=="4" goto menu
if "%choice%"=="5" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto ffmpeg_options
