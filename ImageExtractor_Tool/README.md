# Image Extractor Tool

This batch script provides a simple interface to extract images from video files using FFmpeg.

## Features

* Extract images from video files at a specified frame rate (FPS).
* Automatically checks for FFmpeg and installs it if missing.
* Allows specifying input video file, output directory, and extraction FPS.

## Usage

Run the `ImageExtractor_Tool.cmd` script. You will be prompted to enter:

- Full path to the video file.
- Full path to the output folder.
- FPS (frames per second) to extract images.

The tool will extract images from the video and save them in the specified output folder.

## Requirements

* Windows 10 or later with winget installed.
* FFmpeg installed or will be installed automatically by the script.

## Notes

* After installing FFmpeg, restart your command prompt or PowerShell window.
* Ensure the video file path and output folder are accessible.