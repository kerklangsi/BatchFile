# ================================================================
# YOLO Extractor Tool Launcher
# ================================================================
# This script downloads YOLOExtractor_Tool.cmd and runs it in CMD
# ================================================================

# Define URLs (you can add failover mirrors if you want)
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
    Write-Host "$url" -ForegroundColor Yellow
    try {
        Invoke-WebRequest -Uri $url -OutFile $cmdFile -UseBasicParsing -ErrorAction Stop
        Write-Host "Download successful!" -ForegroundColor Green
        $success = $true
        break
    } catch {
        Write-Host "Failed to download from this URL. Trying next..." -ForegroundColor Red
    }
}

if (-not $success) {
    Write-Host "ERROR: Could not download YOLO Extractor Tool." -ForegroundColor Red
    exit 1
}

# Run the batch tool in CMD
if (Test-Path -Path $cmdFile) {
    Write-Host "Launching YOLO Extractor Tool in Command Prompt..."
    Start-Process cmd.exe -ArgumentList "/c `"$cmdFile`"" -Wait
} else {
    Write-Host "Batch script not found after download." -ForegroundColor Red
    exit 1
}

# Optional cleanup (remove temp file after closing CMD)
Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
