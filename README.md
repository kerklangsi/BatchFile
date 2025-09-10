# Batch File Utilities

This repository contains **Windows batch scripts** to automate various tasks. These scripts are designed to be **simple, portable, and easy to use**, without requiring programming knowledge.

---

## Features

* Run any batch file with a double-click or from the command prompt.
* Capture console output to logs for debugging or record-keeping.
* Minimal dependencies — works on any Windows machine.
* Flexible usage — can be applied to video/image processing, data management, or other batch automation tasks.

---

## Requirements

* Windows 10/11 (or later)
* Optional tools depending on your scripts:

  * FFmpeg (for video/image processing)
  * YOLO model files (for object detection)
* No additional installation required for basic batch execution.

---

## Usage

1. **Run a batch file**:

Double-click the `.bat` file or run it from the command prompt:

```bat
"C:\Path\To\Your\BatchFile.bat"
```

2. **Follow on-screen prompts** (if any).

3. **Optional: Save console output to a log file**:

```bat
"C:\Path\To\Your\BatchFile.bat" > log.txt
```

This captures all console output into `log.txt` for later review.

---

## Examples

### YOLO & Image Extractor Tool

* Extract images from videos.
* Run YOLO object detection on images or videos.
* Prompts user for input and output directories.

### Debug Log Tool

* Run any batch file and capture its console output.
* Useful for debugging or automated logging.

---

## Contributing

Feel free to add your own batch scripts or improve existing ones. Pull requests and issues are welcome.

---

## License

MIT License. See `LICENSE` file for details.
