## YOLO Running Tool

## Description

The **YOLO Running Tool** is a Windows batch script that automates running YOLO object detection models. It manages model selection, environment activation, and runs detection on images or videos.

## Requirements

- Windows 10 or later.
- Python environment with necessary YOLO dependencies installed.
- Pre-trained YOLO models available.

## What It’s Used For

- Running YOLO models for object detection on images or videos.
- Managing model selection and configuration.
- Providing easy-to-use menu-driven commands.

## How to Use

### Option 1: Extract images from video

When you select this option, the program will prompt you step-by-step:

```bat
Enter full path to video file: C:\Videos\car.mp4
Enter full path to output folder: C:\Dataset\CarImages
Enter FPS to extract: 2
```

Then it will show a review screen:

```bat
Video file:    "C:\Videos\car.mp4"
Output folder: "C:\Dataset\CarImages"
FPS:           2
Base name:     car
Example file:  "C:\Dataset\CarImages\car_0001.png"
```

You will then see extraction options:

```
[1] Start extraction
[2] Return to Main Menu
[3] Change inputs
[4] Exit
Choose an option (1-3):
```

If you choose to start extraction, the program runs ffmpeg and shows:

```
Extraction complete!
```

The program stays open for further commands until you choose to exit.

---

### Option 2: Run YOLO training

When you select this option, the program will prompt:

```bat
Enter YOLO version number: 8
```

It will then activate or create the conda environment and install dependencies, showing messages like:

```bat
Anaconda detected!
Creating conda environment yolov8 ...
Installing ultralytics, supervision, roboflow...
Installing PyTorch...
True NVIDIA GeForce RTX 4090
```

Next, it prompts for the Roboflow dataset link:

```bat
Paste your Roboflow dataset download link:
```

If you enter a link, it downloads the dataset:

```
Downloading dataset from Roboflow...
```

Then it prompts for epochs:

```bat
Enter number of epochs to train (e.g. 50): 50
```

It creates the training script and asks for confirmation:

```
[1] Start YOLO training
[2] Back to YOLO runner
[3] Return to Main Menu
[4] Exit
Choose an option (1-4):
```

If you start training, it runs Python and shows training progress:

```
Starting YOLO training...
Epoch 1/50 - loss: 2.1
...
Training complete! Check the 'runs/detect' folder for results.
```

The program stays open for further commands until you choose to exit.

---

### Option 3: Install/Uninstall FFmpeg

When you select this option, the program shows:

```
================================================
           INSTALL / UNINSTALL FFMPEG
================================================
[1] Install FFmpeg
[2] Uninstall FFmpeg
[3] Check FFmpeg version
[4] Return to Main Menu
[5] Exit
Choose an option (1-5):
```

Choosing install or uninstall shows progress messages:

```bat
Installing FFmpeg...
FFmpeg installed successfully.
Please restart the batch file to update PATH.
```

or

```bat
Uninstalling FFmpeg...
Please restart the batch file to update PATH.
```

The program stays open until you choose to return to the main menu or exit.

---

### Option 4: Exit

Closes the program.

---

## Notes

- After installing or uninstalling FFmpeg, restart your command prompt or PowerShell window.
- Ensure your video files and output folders are accessible.
- The script uses Python and conda commands; ensure they are in your PATH.