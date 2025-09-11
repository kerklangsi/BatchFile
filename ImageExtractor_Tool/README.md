# Image Extractor Tool

## 📌 Description

The **Image Extractor Tool** is a Windows batch script that extracts frames from a video at a user-defined FPS (frames per second) using **FFmpeg**.
It automatically names the extracted images with the video’s base filename and a sequential number.

---

## ✅ Requirements

* Microsoft Windows 10/11
* [FFmpeg](https://ffmpeg.org/) installed and added to PATH

---

## 🎯 What It’s Used For

* Converting videos into a sequence of images.
* Preparing datasets for computer vision and machine learning projects.
* Extracting reference frames from videos for editing or analysis.

---

## 🚀 How to Use

1. Run the script:

   ```
   ImageExtractor_Tool.exe
   ```

2. Enter the required inputs when prompted: (can be use with quote or not)

   ```
   Enter full path to video file: C:\Videos\car.mp4
   Enter full path to output folder: "C:\Dataset\CarImages"
   Enter FPS to extract: 2
   ```
   
3. Review the settings:

   ```
   Video file:    "C:\Videos\car.mp4"
   Output folder: "C:\Dataset\CarImages"
   FPS:           2
   Base name:     car
   Example file:  "C:\Dataset\CarImages\car_0001.png"
   ```

4. Choose an option:

   ```
   [1] Start extraction
   [2] Change inputs
   [3] Exit
   ```

5. After extraction, images will be saved in the output folder with sequential names:

   ```
   car_0001.png, car_0002.png, car_0003.png ...
   ```

6. Once complete, you can:

   ```
   [1] Change inputs
   [2] Exit
   ```
