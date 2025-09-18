# YOLO Running Tool

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

The program will start with a menu like this:

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

## Notes

- Ensure Python and required packages are installed and accessible in your PATH.
- Configure model paths and parameters as needed.