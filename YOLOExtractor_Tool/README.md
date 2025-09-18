# YOLO & Image Extractor Tool

## Description

The **YOLO & Image Extractor Tool** is a Windows batch script that combines multiple utilities into one program. It allows you to extract images from videos, train YOLO models with automated environment setup, and manage FFmpeg installation.

## Requirements

- Microsoft Windows 10/11
- [Anaconda](https://www.anaconda.com/) (required for YOLO training)
- [FFmpeg](https://ffmpeg.org/) (used for image extraction; can be installed via this tool)
- Internet connection (for installing dependencies and downloading datasets)
- GPU with CUDA support (recommended for YOLO training)

## What It’s Used For

- Extracting image datasets from video files.
- Automatically setting up YOLO training environments with Python, PyTorch, and Ultralytics.
- Downloading datasets directly from Roboflow.
- Training YOLOv8 or YOLOv11 models with minimal manual setup.
- Managing FFmpeg installation without leaving the tool.

## How to Use

### 1. Main Menu

When you run the script, you’ll see:

```text
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

### 2. Option 1 – Extract Images from Video

- Prompts for:
  - Video file path (e.g., `C:\Videos\car.mp4`)
  - Output folder (e.g., `C:\Dataset\CarImages`)
  - FPS (frames per second) (e.g., `2`)

- Example review screen:

```text
Video file:    "C:\Videos\car.mp4"
Output folder: "C:\Dataset\CarImages"
FPS:           2
Base name:     car
Example file:  "C:\Dataset\CarImages\car_0001.png"
```

- Extracted images saved as:

```text
car_0001.png
car_0002.png
car_0003.png
...
```

### 3. Option 2 – Run YOLO Training

- Prompts for YOLO version (e.g., `8` or `11`).

  ```
  Enter YOLO version number: 8
  ```

- Creates Conda environment if missing.
- Installs dependencies: Ultralytics, PyTorch, Roboflow, Supervision.
- Verifies CUDA availability.

- Optionally downloads dataset from Roboflow.

  ```
  Paste your Roboflow dataset download link: https://app.roboflow.com/ds/abc123
  Downloading dataset from Roboflow...
  ```

- Prompts for number of epochs (e.g., `50`).

  ```
  Enter number of epochs to train (e.g. 50): 50
  ```

- Generates `train_yolo.py` script for training, validation, and prediction.

- Training output example:

  ```
  Epoch 1/50 - loss: 2.1
  Epoch 25/50 - loss: 0.8
  Epoch 50/50 - loss: 0.3
  Training complete! Check the 'runs/detect' folder for results.
  ```

- Example outcome:

  ```
  runs/detect/train/weights/best.pt    <- best trained model
  runs/detect/train/results.png        <- training curves
  runs/detect/predict/                 <- YOLO predictions on test images
  ```

### 4. Option 3 – Install/Uninstall FFmpeg

Example user input and output:

```
Choose an option (1-5): 1
Installing FFmpeg...
FFmpeg installed successfully.
Please restart the batch file to update PATH.
```

```
Choose an option (1-5): 2
Uninstalling FFmpeg...
Please restart the batch file to update PATH.
```

```
Choose an option (1-5): 3
ffmpeg version 8.0-full_build-www.gyan.dev
built with gcc 15.2.0 (Rev8, Built by MSYS2 project)
...
```

### 5. Option 4 – Exit

- Closes the tool.

## Notes

- After installing or uninstalling FFmpeg, restart your command prompt or PowerShell window.
- Ensure your video files and output folders are accessible.
- The script uses Python and conda commands; ensure they are in your PATH.