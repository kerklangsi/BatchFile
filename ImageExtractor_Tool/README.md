# Image Extractor Tool

## Description

This batch script provides a simple interface to extract images from video files using FFmpeg. It automates frame extraction at a user-defined frame rate.

## Requirements

- Windows 10 or later with winget installed.
- FFmpeg installed or will be installed automatically by the script.

## What It’s Used For

- Extracting still frames from video files.
- Preparing datasets for machine learning or analysis.
- Converting videos into individual image files.

## How to Use

Run the `ImageExtractor_Tool.cmd` script. You will be prompted to enter:

- Full path to the video file.
- Full path to the output folder.
- FPS (frames per second) to extract images.

### Example Input/Output

Input:

```text
Video file: C:\Videos\car.mp4
Output folder: C:\Dataset\CarImages
FPS: 2
```

Output:

```text
car_0001.png
car_0002.png
car_0003.png
...
```

Each image is a frame extracted at 2 FPS from the video.

## Notes

- The script checks for FFmpeg and installs it if missing.
- After installing FFmpeg, restart your command prompt or PowerShell window.
- Ensure the video file path and output folder are accessible.