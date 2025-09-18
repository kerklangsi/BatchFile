# FFmpeg Tool

## Description

This tool provides a simple batch script to install, uninstall, and check the version of FFmpeg on Windows using winget. It helps users easily manage FFmpeg without manual setup.

## Requirements

- Windows 10 or later with winget installed and configured.
- Internet connection to download FFmpeg during installation.

## What It’s Used For

- Installing FFmpeg if not already present.
- Uninstalling FFmpeg when no longer needed.
- Checking the installed FFmpeg version.

## How to Use

Run the `Ffmpeg_Tool.cmd` script. You will see a menu with the following options:

```text
===============================================================
              INSTALL / UNINSTALL FFMPEG
===============================================================
[1] Install FFmpeg
[2] Uninstall FFmpeg
[3] Check FFmpeg version
[4] Exit
===============================================================
Choose an option (1-4): 
```

### Options

- **1. Install FFmpeg**  
  Installs FFmpeg using winget if it is not already installed. If FFmpeg is detected in your PATH, it will skip installation.

- **2. Uninstall FFmpeg**  
  Uninstalls FFmpeg using winget if it is installed. If FFmpeg is not found in your PATH, it will skip uninstallation.

- **3. Check FFmpeg version**  
  Displays the current installed FFmpeg version. If FFmpeg is not found in your PATH, it will notify you.

- **4. Exit**  
  Exits the script.

### Example Input/Output

Input: Choose option 1 to install FFmpeg.  

Output:  

```text
Installing FFmpeg...
FFmpeg installed successfully.
Please restart the command prompt for changes to take effect.
```

## Notes

- The script uses the `where ffmpeg` command to detect if FFmpeg is available in your system PATH.  
- After installing or uninstalling, you may need to restart your command prompt or PowerShell window for changes to take effect.  
- The script uses winget to manage FFmpeg installation and uninstallation silently.