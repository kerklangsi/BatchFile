# YOLO & Image Extractor Tool

## 📌 Description

The **YOLO & Image Extractor Tool** is a Windows batch script that combines multiple utilities into one program.
It allows you to:

* Extract images from video files using **FFmpeg**.
* Train YOLO models with automated environment setup using **Anaconda**.
* Install, uninstall, or check **FFmpeg** directly from the menu.

This tool is designed as a one-stop solution for dataset preparation, YOLO training, and environment setup.

---

## ✅ Requirements

* Microsoft Windows 10/11
* [Anaconda](https://www.anaconda.com/) (required for YOLO training)
* [FFmpeg](https://ffmpeg.org/) (used for image extraction; can be installed via this tool)
* Internet connection (for installing dependencies and downloading datasets)
* GPU with CUDA support (recommended for YOLO training)

---

## 🎯 What It’s Used For

* Extracting image datasets from video files.
* Automatically setting up YOLO training environments with Python, PyTorch, and Ultralytics.
* Downloading datasets directly from **Roboflow**.
* Training YOLOv8 or YOLOv11 models with minimal manual setup.
* Managing FFmpeg installation without leaving the tool.

---

## 🚀 How to Use

### 1. Main Menu

When you run the script, you’ll see:

```
================================================
                     MAIN MENU
================================================
[1] Extract images from video
[2] Run YOLO training
[3] Install/Uninstall FFmpeg
[4] Exit
================================================
Choose an option (1-4):
```

---

### 2. Option 1 – Extract Images from Video

* Prompts for:

  * **Video file path** → e.g. `C:\Videos\car.mp4`
  * **Output folder** → e.g. `"C:\Dataset\CarImages"`
  * **FPS (frames per second)** → e.g. `2`

* Example review screen:

  ```
  Video file:    "C:\Videos\car.mp4"
  Output folder: "C:\Dataset\CarImages"
  FPS:           2
  Base name:     car
  Example file:  "C:\Dataset\CarImages\car_0001.png"
  ```

* Example outcome in output folder:

  ```
  car_0001.png
  car_0002.png
  car_0003.png
  ...
  ```

Each image is a frame extracted at 2 FPS from the video.

---

### 3. Option 2 – Run YOLO Training

* Prompts for:

  * **YOLO version** → enter `8` for YOLOv8 or `11` for YOLOv11.
  * Creates Conda environment (`yolov8` or `yolov11`) if missing.
  * Installs dependencies: Ultralytics, PyTorch, Roboflow, Supervision.
  * Verifies CUDA and GPU availability.
  * **Dataset** → paste a Roboflow link, or press Enter to skip.
  * **Epochs** → e.g. `50`.

* Generates a `train_yolo.py` file with training, validation, and prediction steps.

* Example training output:

  ```
  Epoch 1/50 - loss: 2.1
  Epoch 25/50 - loss: 0.8
  Epoch 50/50 - loss: 0.3
  Training complete! Check the 'runs/detect' folder for results.
  ```

* Example outcome:

  ```
  runs/detect/train/weights/best.pt    <- best trained model
  runs/detect/train/results.png        <- training curves
  runs/detect/predict/                 <- YOLO predictions on test images
  ```

---

### 4. Option 3 – Install/Uninstall FFmpeg

* Menu:

  ```
  ================================================================
                 INSTALL / UNINSTALL FFMPEG
  ================================================================
  [1] Install FFmpeg
  [2] Uninstall FFmpeg
  [3] Check FFmpeg version
  [4] Return to Main Menu
  [5] Exit
  ================================================================
  ```

* **Install** → downloads FFmpeg via Winget.

  ```
  Installing FFmpeg...
  FFmpeg installed successfully.
  ```

* **Uninstall** → removes FFmpeg if installed.

  ```
  Uninstalling FFmpeg...
  Please restart.
  ```

* **Check version** → shows installed FFmpeg details.

  ```
  ================================================================
  ffmpeg version 8.0-full_build-www.gyan.dev
  built with gcc 15.2.0 (Rev8, Built by MSYS2 project)
  ...
  ================================================================
  ```

---

### 5. Option 4 – Exit

* Closes the tool.

---

## Features

### Image Extractor

* Extract images from a video file at a specified FPS.
* Automatically checks for FFmpeg and installs it if missing.
* Allows specifying video file path, output folder, and FPS.

### YOLO Runner

* Detects Anaconda installation and prompts to install if missing.
* Creates and activates a conda environment for YOLO training.
* Installs necessary Python packages (`ultralytics`, `supervision`, `roboflow`, `torch`, `torchvision`).
* Verifies CUDA availability.
* Downloads dataset from Roboflow if a link is provided.
* Allows setting the number of training epochs.
* Generates a `train_yolo.py` script to run YOLO training, validation, and prediction.
* Provides menu options to start training, return to YOLO runner, main menu, or exit.

### FFmpeg Install/Uninstall

* Installs or uninstalls FFmpeg using winget.
* Checks if FFmpeg is installed before performing actions.
* Allows checking the installed FFmpeg version.

## Usage

Run the `YOLOExtractor_Tool.cmd` script. You will see a main menu with options to extract images, run YOLO training, manage FFmpeg, or exit.

Follow the prompts to enter required inputs and choose actions.

## Requirements

* Windows 10 or later with winget installed.
* Anaconda installed for YOLO training.
* Internet connection for downloading packages and datasets.

## Notes

* After installing or uninstalling FFmpeg, restart your command prompt or PowerShell window.
* Ensure your video files and output folders exist and are accessible.
* The script uses Python and conda commands; ensure they are in your PATH.