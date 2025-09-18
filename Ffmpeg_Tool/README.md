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

you will see a menu like this:

```bat

================================================
           INSTALL / UNINSTALL FFMPEG
================================================
[1] Install FFmpeg
[2] Uninstall FFmpeg
[3] Check FFmpeg version
[4] Return to Main Menu
[5] Exit
Choose an option (1-5):
```

Choosing install or uninstall shows progress messages:

```bat
Installing FFmpeg...
FFmpeg installed successfully.
Please restart the batch file to update PATH.
```

or

```bat
Uninstalling FFmpeg...
Please restart the batch file to update PATH.
```

The program stays open until you choose to return to the main menu or exit.

---
```

## Notes

- The script uses the `where ffmpeg` command to detect if FFmpeg is available in your system PATH.  
- After installing or uninstalling, you may need to restart your command prompt or PowerShell window for changes to take effect.  
- The script uses winget to manage FFmpeg installation and uninstallation silently.