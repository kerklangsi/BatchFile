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

Run the `YOLORunning_Tool.cmd` script to start the YOLO Runner.

1. The script checks for Anaconda installation. If not found, it prompts to install Anaconda.

2. You will be prompted to enter the YOLO version number (e.g., 8 for YOLOv8, 11 for YOLOv11).

3. The script activates the corresponding conda environment or creates it if missing.

4. It checks and installs required Python dependencies automatically.

5. The script verifies CUDA availability for GPU acceleration.

6. You will be prompted to paste a Roboflow dataset download link or press Enter to skip.

7. Enter the number of epochs to train (e.g., 50).

8. The script generates a `train_yolo.py` Python script that runs training, validation, and prediction.

9. You will see a menu to start training, return to YOLO runner, or exit.

10. When training starts, the script runs the Python training script and shows progress.

11. After training, you can choose to rerun training, return to YOLO runner, or exit.

12. Training results, including best weights and predictions, are saved in the `runs/detect` folder.

This process automates YOLO model training with minimal manual setup.

## Notes

- Ensure Python and required packages are installed and accessible in your PATH.
- Configure model paths and parameters as needed.