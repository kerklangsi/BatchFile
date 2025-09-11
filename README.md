# Batch File Utilities

GitHub release (latest by date) – [Releases](https://github.com/kerklangsi/BatchFile/releases)
GitHub repo – [BatchFile](https://github.com/kerklangsi/BatchFile)

A collection of **Windows batch tools** for automation, video/image processing, and object detection. Each tool is portable, easy to use, and requires no coding knowledge.

---

## 📥 Download

* Download the latest release from the [Releases section](https://github.com/kerklangsi/BatchFile/releases).
* Extract and run any `.bat` file directly – no installation needed.
* Converted `.exe` files are also available (built with BatToExe Portable).

---

## ✨ Tools

### 🔹 Debug Log Tool

* Run any batch file and capture console output to a log file.
* Useful for debugging or saving program output for later review.

### 🔹 Image Extractor Tool

* Extract frames from videos at a custom FPS using **FFmpeg**.
* Prompts user for input video path, output folder, and FPS.

### 🔹 Install/Uninstall FFmpeg Tool

* Install FFmpeg via **Winget** with one click.
* Uninstall FFmpeg if no longer needed.
* Check installed FFmpeg version.

### 🔹 YOLO & Image Extractor Tool

* Combined tool for dataset preparation and object detection.
* Extracts images from videos and runs YOLO detection in one workflow.

### 🔹 YOLO Running Tool

* Run YOLOv8 models on images or videos.
* Prompts for model file and source path.
* Saves results in the `runs\detect` folder.

---

## ⚙ Requirements

* Microsoft Windows 10/11
* [FFmpeg](https://ffmpeg.org/) (for video/image extraction)
* [Ultralytics YOLO](https://github.com/ultralytics/ultralytics) (for object detection)
* [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (for installing FFmpeg)

---

## 📖 Usage

1. Choose the tool you want to run (`.bat` or `.exe`).
2. Follow the on-screen prompts (file paths, folders, FPS, model name, etc.).
3. Results will be saved in your chosen directory or in `runs\detect`.

---

## 🙌 Credits

See [CREDITS.md](CREDITS.md) for full acknowledgments.

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/LICENCE) file for details.
