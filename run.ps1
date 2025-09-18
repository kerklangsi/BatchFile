# ================================================================
# Batch Tools Launcher (Persistent CMD Windows)
# Downloads batch files from GitHub and launches them
# ================================================================

function Show-Menu {
    cls
    Write-Host "================================================" -ForegroundColor Cyan
    Write-Host "               Batch Tools Launcher             " -ForegroundColor Cyan
    Write-Host "================================================" -ForegroundColor Cyan
    Write-Host "[1] YOLO Extractor Tool"
    Write-Host "[2] FFmpeg Tool"
    Write-Host "[3] Image Extractor Tool"
    Write-Host "[4] YOLO Extractor Tool"
    Write-Host "[5] YOLO Running Tool"
    Write-Host "[6] Debug Log Tool"
    Write-Host "[7] Exit"
    Write-Host "================================================"
}

function Download-And-Launch {
    param(
        [string]$url,
        [string]$fileName
    )

    $tempDir = "$env:TEMP\BatchTools"
    if (-Not (Test-Path $tempDir)) {
        New-Item -ItemType Directory -Path $tempDir | Out-Null
    }

    $filePath = Join-Path $tempDir $fileName

    Write-Host "Downloading $fileName..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri $url -OutFile $filePath -UseBasicParsing -ErrorAction Stop
    Write-Host "Download complete: $filePath" -ForegroundColor Green

    Write-Host "Launching $fileName in new CMD window..."
    Start-Process -FilePath "cmd.exe" -ArgumentList "/k `"$filePath`""
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Choose an option (1-7)"

    switch ($choice) {
        '1' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/YOLOExtractor_Tool/YOLOExtractor_Tool.cmd" -fileName "YOLOExtractor_Tool.cmd" }
        '2' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/Ffmpeg_Tool/Ffmpeg_Tool.cmd" -fileName "Ffmpeg_Tool.cmd" }
        '3' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/ImageExtractor_Tool/ImageExtractor_Tool.cmd" -fileName "ImageExtractor_Tool.cmd" }
        '4' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/YOLOExtractor_Tool/YOLOExtractor_Tool.cmd" -fileName "YOLOExtractor_Tool.cmd" }
        '5' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/YOLORunning_Tool/YOLORunning_Tool.cmd" -fileName "YOLORunning_Tool.cmd" }
        '6' { Download-And-Launch -url "https://raw.githubusercontent.com/kerklangsi/BatchFile/refs/heads/main/DebugLog_Tool/DebugLog_Tool.cmd" -fileName "DebugLog_Tool.cmd" }
        '7' { break }
        default { Write-Host "Invalid option. Please choose 1-7." -ForegroundColor Yellow }
    }
    Start-Sleep -Seconds 1
}

Write-Host "Exiting Batch Tools Launcher." -ForegroundColor Cyan
