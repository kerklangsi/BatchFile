# Debug Log Tool

## 📌 Description

The **Debug Log Tool** is a Windows batch script that runs another `.bat` file and saves all its console output into a **timestamped log file**.
It uses `tee.exe` to capture the output while still displaying it in the CMD window.

---

## ✅ Requirements

* Microsoft Windows 10/11
* Target `.bat` file you want to debug
* [GnuWin32 CoreUtils](https://sourceforge.net/projects/gnuwin32/) → provides `tee.exe` (must be installed at `C:\Program Files (x86)\GnuWin32\bin\tee.exe` or update the path in the script)

---

## 🎯 What It’s Used For

* Debugging batch scripts by saving their console output.
* Keeping permanent logs of script runs.
* Troubleshooting errors and analyzing script behavior step by step.
* Running multiple debug sessions without manually copying console text.

---

## 🚀 How to Use

1. Run the script:

   ```bat
   Debug_Log_Tool.exe
   ```

2. Enter the full path to the target batch file you want to debug. Example:

   ```
   Path to target BAT file: C:\Scripts\example.bat
   ```

3. The tool will:

   * Generate a **timestamped log file** (e.g., `DebugLog_20250911_153045.txt`) in the same folder.
   * Use `tee.exe` to capture output.
   * Show live output in the CMD window while saving it to the log.

4. After the session ends, the tool displays the log file location:

   ```
   Full log saved to:
   C:\Path\To\DebugLog_20250911_153045.txt
   ```

5. You can choose:

   ```
   [1] Run another debug session
   [2] Exit
   ```

---
