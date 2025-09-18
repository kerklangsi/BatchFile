@echo off
setlocal enabledelayedexpansion
title YOLO and Image Extractor Tool

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
echo [3] Exit
echo ================================================================
set /p "choice=Choose an option (1-3): "

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
if "%choice%"=="3" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto runtraining

:runtraining2
set "choice="
cls
echo ================================================================
echo                    Confirm and Run Training
echo ================================================================
echo [1] Back to YOLO runner
echo [2] Exit
echo ================================================================
set /p "choice=Choose an option (1-2): "

if "%choice%"=="1" goto yolorunner
if "%choice%"=="2" exit /b

echo please enter option value.
timeout /t 2 /nobreak >nul
goto runtraining2
