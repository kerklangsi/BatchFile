# Batch File Utilities

GitHub release (latest by date) – [Releases](https://github.com/kerklangsi/BatchFile/releases/tag/stable)
GitHub repo – [BatchFile](https://github.com/kerklangsi/BatchFile)

A collection of **Windows batch tools** for automation, video/image processing, and object detection. Each tool is portable, easy to use, and requires no coding knowledge.

---

## 📥 Download

* Download the latest release from the [Releases section](https://github.com/kerklangsi/BatchFile/releases/tag/stable).
* Extract and run any `.bat` file directly – no installation needed.
* Converted `.exe` files are also available (built with BatToExe Portable).

---

## ✨ Tools

### 🔹 [Debug Log Tool](Debug%20Log%20Tool/README.md)

A utility that lets you run any batch file while automatically saving its console output into a log file.

* Useful for debugging scripts.
* Helps track what happened during execution.
* Can be used to keep permanent records of program output.

---

### 🔹 [Image Extractor Tool](Image%20Extractor%20Tool/README.md)

A tool that extracts still frames from videos at a user-defined FPS (frames per second) using **FFmpeg**.

* Converts video into individual images.
* Perfect for dataset preparation (e.g., machine learning).
* Lets you choose input video, output folder, and FPS interactively.

---

### 🔹 [Install/Uninstall FFmpeg Tool](Install%20unistall%20Ffmpeg%20Tool/README.md)

A simple installer/uninstaller for **FFmpeg**, powered by **Winget**.

* Install FFmpeg with one click (no manual setup needed).
* Uninstall FFmpeg if no longer required.
* Check if FFmpeg is installed and display its version.
* Helps users who aren’t familiar with command-line setup.

---

### 🔹 [YOLO & Image Extractor Tool](YOLO%20&%20Image%20Extractor%20Tool/README.md)

A **complete workflow tool** that integrates multiple utilities into one:

* 🖼 **Image Extractor Tool** – Extract frames from videos using FFmpeg.
* 🤖 **YOLO Running Tool** – Run YOLO Model object detection on the extracted frames.
* ⚙ **Install/Uninstall FFmpeg Tool** – Quickly install/uninstall FFmpeg if it’s not already set up.

This tool is designed to save time by combining dataset preparation, environment setup, and detection in one script. Ideal for users who want a **one-stop solution** instead of running separate tools individually.

---

### 🔹 [YOLO Running Tool](YOLO%20Running%20Tool/README.md)

A dedicated runner for **YOLO Model object detection**.

* Lets you choose the YOLO model file (`.pt`) and input source (image, folder, or video).
* Runs detection and saves results in the `runs\detect` folder.
* Great for testing trained models or applying pretrained YOLO models to new data.

---

👉 Each tool has its **own README tutorial** in its folder, with step-by-step usage guides.

---
## ⚙ Requirements

* Microsoft Windows 10/11
* [FFmpeg](https://ffmpeg.org/) (for video/image extraction)
* [Anaconda](https://www.anaconda.com/) (recommended for managing Python environments)
* [Ultralytics YOLO](https://github.com/ultralytics/ultralytics) (for object detection)
* [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) (for installing FFmpeg)

---

## 📖 Usage

1. Download or clone this repository.
2. Navigate to the folder of the tool you want to use.
3. Run the `.bat` or `.exe` file inside.
4. See the tool’s individual `README.md` for full instructions.

Each tool is self-contained and will guide you with prompts specific to its task.

---

## 🙌 Credits

See [CREDITS.md](CREDITS.md) for full acknowledgments.

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/LICENCE) file for details.
