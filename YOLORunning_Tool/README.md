# YOLO Running Tool

## 📌 Description

The **YOLO Running Tool** is a Windows batch script that automates the process of training YOLO models.

It sets up an Anaconda environment, installs dependencies, downloads datasets from Roboflow, and generates a ready-to-run training script.

---

## ✅ Requirements

* Microsoft Windows 10/11

* [Anaconda](https://www.anaconda.com/)

* Internet connection (for dependency installation and optional dataset download)

* GPU with CUDA support (recommended for faster training)

---

## 🎯 What It’s Used For

* Setting up YOLOv8 or YOLOv11 training with minimal effort

* Automatically managing Python/Conda environments

* Installing required dependencies (Ultralytics, PyTorch, Roboflow, Supervision)

* Downloading datasets directly from Roboflow

* Running training, validation, and prediction in one pipeline

---

## 🚀 How to Use

1. **Run the script**

```bat

YOLO_Running_Tool.bat

```

2. **You will see prompts like this:**

### Select YOLO version

```
================================================================

                        YOLO TRAINING

================================================================

Example: enter 11 for YOLO11, 8 for YOLO8

Enter YOLO version number:

```

→ Enter `8` for YOLOv8 or `11` for YOLOv11.

### Activate Conda environment

```
================================================================

                        Activate Conda

================================================================

Creating conda environment yolov8 ...

```

### Install dependencies

```
================================================================

                   Install dependencies

================================================================

Checking dependencies (skip if already installed)...

Installing ultralytics, supervision, roboflow...

Installing PyTorch...

```

### Verify CUDA

```
================================================================

                        Verify CUDA

================================================================

True NVIDIA GeForce RTX 4090

```

### Roboflow dataset (optional)

```
================================================================

                     Roboflow Dataset

================================================================

If Roboflow dataset already downloaded, just press Enter.

Paste your Roboflow dataset download link:

```

### Set training epochs

```
================================================================

                        Set Epochs

================================================================

Enter number of epochs to train (e.g. 50):

```

### Confirm and run training

```
================================================================

                 Confirm and Run Training

================================================================

[1] Start YOLO training

[2] Back to YOLO runner

[3] Exit

Choose an option (1-3):

```

3. **After training completes**

* Models and logs are saved in: `runs/detect/train/`

* Best weights: `runs/detect/train/weights/best.pt`

* Predictions: `runs/detect/predict/`





