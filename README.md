# BatchFile Tools Collection

This folder contains a collection of batch script tools designed for various multimedia and machine learning tasks.

## Included Tools

- [**Debug Log Tool**](DebugLog_Tool/README.md): Runs a target batch file and captures its output to a timestamped log file.
- [**Ffmpeg Tool**](Ffmpeg_Tool/README.md): Installs, uninstalls, and checks the version of FFmpeg using winget.
- [**Image Extractor Tool**](ImageExtractor_Tool/README.md): Extracts images from video files at a specified frame rate using FFmpeg.
- [**YOLO Extractor Tool**](YOLOExtractor_Tool/README.md): Provides image extraction and YOLO training automation with Anaconda and Python.
- [**YOLO Running Tool**](YOLORunning_Tool/README.md): Runs YOLO object detection models with menu-driven commands.

## Usage

Run the batch tools launcher script directly from the internet using PowerShell:

```powershell
iwr -useb https://tinyurl.com/yr92ra3c | iex
```

## Credits

See the [CREDITS.md](CREDITS.md) file for contributors and acknowledgments.

## Requirements

- Windows 10 or later with winget installed.
- Anaconda installed for YOLO-related tools.
- Python environment with necessary packages for YOLO training and running.

## Notes

- After installing or uninstalling FFmpeg, restart your command prompt or PowerShell window.
- Ensure all required dependencies are installed and accessible in your PATH.

## License

Please refer to the LICENSE(LICENSE) file in the root BatchFile folder for license details.

---

Created by kerklangsi
