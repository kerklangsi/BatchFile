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

RWhen you select this option, the program will prompt you step-by-step:

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


## Notes

- The script checks for FFmpeg and installs it if missing.
- After installing FFmpeg, restart your command prompt or PowerShell window.
- Ensure the video file path and output folder are accessible.