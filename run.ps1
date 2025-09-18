
# ================================================================
# YOLO Extractor Tool Downloader & Runner
# ================================================================

# Define multiple URLs (failover support)
$urls = @(
    "https://tinyurl.com/yr92ra3c", # short link to run.ps1
    "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/run.ps1"
)

# Temp workspace
$tempDir   = "$env:TEMP\YOLOExtractorTool"
$output    = "$tempDir\YOLOExtractor_Tool.cmd"

# Ensure temp directory exists
if (!(Test-Path -Path $tempDir)) {
    New-Item -ItemType Directory -Path $tempDir | Out-Null
}

# Try downloading the CMD script from available URLs
$success = $false
foreach ($url in $urls) {
    Write-Host ""
    Write-Host "Downloading YOLO Extractor Tool from:" -ForegroundColor Cyan
    Write-Host "$url" -ForegroundColor Yellow

    try {
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing -ErrorAction Stop
        Write-Host "Download successful!" -ForegroundColor Green
        $success = $true
        break
    } catch {
        Write-Host "Failed to download from this URL. Trying next..." -ForegroundColor Red
    }
}

if (-not $success) {
    Write-Host ""
    Write-Host "ERROR: Download failed from all available sources." -ForegroundColor Red
    exit 1
}

# Run the batch tool
if (Test-Path -Path $output) {
    Write-Host "Running YOLO Extractor Tool..."
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$output`"" -Wait
} else {
    Write-Host "Batch script not found in expected folder."
    exit 1
}

# Cleanup
Write-Host "Cleaning up..."
Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "All done. YOLO Extractor Tool executed successfully." -ForegroundColor Green
