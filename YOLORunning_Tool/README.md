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

Run the `YOLORunning_Tool.cmd` script to start the tool. You will see a menu with options to select YOLO version, activate environment, and run detection.

### Step 1: Select YOLO Version

```
Select YOLO version number: 8
```

This sets the model and conda environment (e.g., `yolov8`).

### Step 2: Activate Conda Environment

The script activates the conda environment automatically:

```
Activating conda environment yolov8...
```

### Step 3: Run Detection

You will be prompted to choose input source (image, folder, or video) and run detection.

Example output:

```
Running detection on input images...
Detection complete! Results saved in runs\detect folder.
```

### Step 4: Review Results

Check the `runs\detect` folder for detection outputs, including images with bounding boxes and logs.

## Notes

- Ensure Python and required packages are installed and accessible in your PATH.
- Configure model paths and parameters as needed.