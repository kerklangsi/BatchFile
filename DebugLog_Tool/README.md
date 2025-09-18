# Debug Log Tool

This batch script helps run another batch file while capturing its output to a timestamped log file.

## Features

* Prompts for the path to a target batch file to run.
* Checks if the target batch file exists.
* Generates a timestamped log file in the same directory as the script.
* Uses `tee.exe` from GnuWin32 CoreUtils to capture and display output simultaneously.
* Saves the full output of the target batch file to the log file.
* Allows running multiple debug sessions in sequence.

## Usage

1. Run `DebugLog_Tool.cmd`.
2. Enter the full path to the batch file you want to debug.
3. The script will run the target batch file and save the output to a timestamped log file.
4. After completion, you can choose to run another debug session or exit.

## Requirements

* Windows with PowerShell or Command Prompt.
* `tee.exe` from GnuWin32 CoreUtils installed at `C:\Program Files (x86)\GnuWin32\bin\tee.exe` (or update the path in the script).

## Notes

* If `tee.exe` is not found, the script will prompt to download it.
* Log files are saved with the format `DebugLog_YYYYMMDD_HHMMSS.txt`.
