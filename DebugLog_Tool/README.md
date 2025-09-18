# Debug Log Tool

## Description

This batch script helps run another batch file while capturing its output to a timestamped log file. It uses `tee.exe` from GnuWin32 CoreUtils to display and save output simultaneously.

## Requirements

- Windows with PowerShell or Command Prompt.
- `tee.exe` from GnuWin32 CoreUtils installed at `C:\Program Files (x86)\GnuWin32\bin\tee.exe` (or update the path in the script).

## What It’s Used For

- Debugging batch scripts by capturing console output.
- Keeping permanent logs of program output.
- Running multiple debug sessions in sequence.

## How to Use

1. When prompted, enter the full path to the batch file you want to debug.

   Example input:

   ```bat
   Path to target BAT file: C:\Scripts\MyScript.cmd
   ```

2. The tool runs the target batch file and captures its output to a timestamped log file.

   Example output:

   ```bat
   Running MyScript.cmd...
   Output saved to DebugLog_20250919_123456.txt
   ```

3. After the session completes, you can choose to run another debug session or exit.

4. Repeat as needed.

## Notes

- If `tee.exe` is not found, the script prompts to download it.
- Log files are saved with the format `DebugLog_YYYYMMDD_HHMMSS.txt`.
