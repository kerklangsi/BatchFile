# FFmpeg Installer / Uninstaller Tool

## 📌 Description

This tool is a **Windows batch script** that allows users to:

* Install FFmpeg
* Uninstall FFmpeg
* Check the installed FFmpeg version

It uses **Winget** (Windows Package Manager) to manage the installation/uninstallation process.

---

## ✅ Requirements

Before running this program, make sure you have:

* **Windows 10 or 11**
* **Winget** (comes pre-installed on Windows 10+ with updates)
* **Internet connection** (to download FFmpeg)

---

## 🎯 What It’s Used For

* Quickly setting up FFmpeg on a Windows system
* Removing FFmpeg if no longer needed
* Checking the installed FFmpeg version without typing commands manually

This is useful for users who work with video/audio processing tools (like YOLO or Image Extractor) that require FFmpeg.

---

## 🚀 How to Use

1. Run the batch file:

   ```bash
   Install-Uninstall-FFmpeg.bat
   ```

2. Choose an option from the menu:

   ```
   ================================================================
                 INSTALL / UNINSTALL FFMPEG
   ================================================================
   [1] Install FFmpeg
   [2] Uninstall FFmpeg
   [3] Check FFmpeg version
   [4] Exit
   ================================================================
   Choose an option (1-4):
   ```

3. Actions:

   * **Option 1 – Install**: Downloads and installs FFmpeg via Winget.
   * **Option 2 – Uninstall**: Removes FFmpeg if it’s installed.
   * **Option 3 – Check Version**: Displays the installed FFmpeg version.
   * **Option 4 – Exit**: Closes the program.

---

## 📂 Project Structure

```
main/
│── Install-Uninstall-FFmpeg.bat
│── README.md
```

