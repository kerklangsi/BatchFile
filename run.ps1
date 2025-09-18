# ================================================================
# YOLO Extractor Tool Launcher (Persistent CMD)
# ================================================================

# Define URLs
$urls = @(
    "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/YOLOExtractor_Tool/YOLOExtractor_Tool.cmd"
)

# Temp file path
$tempDir = "$env:TEMP\YOLOExtractorTool"
$cmdFile = "$tempDir\YOLOExtractor_Tool.cmd"

# Ensure temp directory exists
if (!(Test-Path -Path $tempDir)) {
    New-Item -ItemType Directory -Path $tempDir | Out-Null
}

# Try downloading the CMD script
$success = $false
foreach ($url in $urls) {
    Write-Host "Downloading YOLO Extractor Tool from:" -ForegroundColor Cyan
    try {
        Invoke-WebRequest -Uri $url -OutFile $cmdFile -UseBasicParsing -ErrorAction Stop
        Write-Host "Download successful!" -ForegroundColor Green
        $success = $true
        break
    } catch {
        Write-Host "Failed to download from $url" -ForegroundColor Red
    }
}

if (-not $success) {
    Write-Host "ERROR: Could not download YOLO Extractor Tool." -ForegroundColor Red
    exit 1
}

# Run the batch tool in a new CMD window that stays open
if (Test-Path -Path $cmdFile) {
    Write-Host "Launching YOLO Extractor Tool..."
    Start-Process cmd.exe -ArgumentList "/k `"$cmdFile`""
} else {
    Write-Host "Batch script not found after download." -ForegroundColor Red
    exit 1
}
