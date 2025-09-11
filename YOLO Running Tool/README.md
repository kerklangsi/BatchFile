\# YOLO Running Tool



\## 📌 Description



The \*\*YOLO Running Tool\*\* is a Windows batch script that automates the process of training YOLO models.

It sets up an Anaconda environment, installs dependencies, downloads datasets from Roboflow, and generates a ready-to-run training script.



---



\## ✅ Requirements



\* Microsoft Windows 10/11

\* \[Anaconda](https://www.anaconda.com/)

\* Internet connection (for dependency installation and optional dataset download)

\* GPU with CUDA support (recommended for faster training)



---



\## 🎯 What It’s Used For



\* Setting up YOLOv8 or YOLOv11 training with minimal effort

\* Automatically managing Python/Conda environments

\* Installing required dependencies (Ultralytics, PyTorch, Roboflow, Supervision)

\* Downloading datasets directly from Roboflow

\* Running training, validation, and prediction in one pipeline



---



\## 🚀 How to Use



1\. \*\*Run the script\*\*



&nbsp;  ```bat

&nbsp;  YOLO\_Running\_Tool.bat

&nbsp;  ```



2\. \*\*You will see prompts like this:\*\*



&nbsp;  ### Select YOLO version



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                          YOLO TRAINING

&nbsp;  ================================================================

&nbsp;  Example: enter 11 for YOLO11, 8 for YOLO8

&nbsp;  Enter YOLO version number:

&nbsp;  ```



&nbsp;  → Enter `8` for YOLOv8 or `11` for YOLOv11.



&nbsp;  ### Activate Conda environment



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                          Activate Conda

&nbsp;  ================================================================

&nbsp;  Creating conda environment yolov8 ...

&nbsp;  ```



&nbsp;  ### Install dependencies



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                     Install dependencies

&nbsp;  ================================================================

&nbsp;  Checking dependencies (skip if already installed)...

&nbsp;  Installing ultralytics, supervision, roboflow...

&nbsp;  Installing PyTorch...

&nbsp;  ```



&nbsp;  ### Verify CUDA



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                          Verify CUDA

&nbsp;  ================================================================

&nbsp;  True NVIDIA GeForce RTX 4090

&nbsp;  ```



&nbsp;  ### Roboflow dataset (optional)



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                       Roboflow Dataset

&nbsp;  ================================================================

&nbsp;  If Roboflow dataset already downloaded, just press Enter.

&nbsp;  Paste your Roboflow dataset download link:

&nbsp;  ```



&nbsp;  ### Set training epochs



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                          Set Epochs

&nbsp;  ================================================================

&nbsp;  Enter number of epochs to train (e.g. 50):

&nbsp;  ```



&nbsp;  ### Confirm and run training



&nbsp;  ```

&nbsp;  ================================================================

&nbsp;                   Confirm and Run Training

&nbsp;  ================================================================

&nbsp;  \[1] Start YOLO training

&nbsp;  \[2] Back to YOLO runner

&nbsp;  \[3] Exit

&nbsp;  Choose an option (1-3):

&nbsp;  ```



3\. \*\*After training completes\*\*



&nbsp;  \* Models and logs are saved in: `runs/detect/train/`

&nbsp;  \* Best weights: `runs/detect/train/weights/best.pt`

&nbsp;  \* Predictions: `runs/detect/predict/`



---



