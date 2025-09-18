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

1. Run `DebugLog_Tool.cmd`.
2. Enter the full path to the batch file you want to debug.
3. The script runs the target batch file and saves output to a timestamped log file.
4. After completion, choose to run another debug session or exit.

### Example Input/Output

Input:

```
Path to target BAT file: C:\Scripts\MyScript.cmd
```

Output:

```
Running MyScript.cmd...
Output saved to DebugLog_20250919_123456.txt
```

## Notes

- If `tee.exe` is not found, the script prompts to download it.
- Log files are saved with the format `DebugLog_YYYYMMDD_HHMMSS.txt`.
