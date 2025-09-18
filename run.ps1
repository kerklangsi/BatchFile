# ================================================================
# YOLO Extractor Tool Launcher (Persistent CMD Window)
# ================================================================

# Define script URL
$url = "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/YOLOExtractor_Tool/YOLOExtractor_Tool.cmd"

# Temp file path
$tempDir = "$env:TEMP\YOLOExtractorTool"
$cmdFile = "$tempDir\YOLOExtractor_Tool.cmd"

# Ensure temp directory exists
if (!(Test-Path -Path $tempDir)) {
    New-Item -ItemType Directory -Path $tempDir | Out-Null
}

# Download the CMD script
Write-Host "Downloading YOLO Extractor Tool..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $url -OutFile $cmdFile -UseBasicParsing -ErrorAction Stop
Write-Host "Download successful!" -ForegroundColor Green

# Launch CMD that STAYS OPEN
Write-Host "Launching YOLO Extractor Tool in a new Command Prompt window..."
Start-Process -FilePath "cmd.exe" -ArgumentList "/k `"$cmdFile`""

# Do NOT clean up immediately (or file will be gone before CMD uses it)
Write-Host ""
Write-Host "NOTE: The CMD window will stay open until you close it manually." -ForegroundColor Yellow
Write-Host "Temporary file saved at: $cmdFile"
