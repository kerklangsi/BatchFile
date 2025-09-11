Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Debug Log Tool"
$form.Size = '400,300'

$label = New-Object System.Windows.Forms.Label
$label.Text = "Select BAT file to run:"
$label.Location = '10,20'
$label.Size = '200,20'
$form.Controls.Add($label)

$openFile = New-Object System.Windows.Forms.OpenFileDialog
$openFile.Filter = "Batch files (*.bat)|*.bat"

$button = New-Object System.Windows.Forms.Button
$button.Text = "Browse..."
$button.Location = '220,15'
$button.Add_Click({
    if ($openFile.ShowDialog() -eq "OK") {
        $textbox.Text = $openFile.FileName
    }
})
$form.Controls.Add($button)

$textbox = New-Object System.Windows.Forms.TextBox
$textbox.Location = '10,50'
$textbox.Size = '360,20'
$form.Controls.Add($textbox)

$runButton = New-Object System.Windows.Forms.Button
$runButton.Text = "Run and Log"
$runButton.Location = '10,80'
$runButton.Add_Click({
    $batFile = $textbox.Text
    if (-not (Test-Path $batFile)) {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batFile")
        return
    }
    $date = Get-Date -Format "yyyyMMdd_HHmmss"
    $logFile = "$PSScriptRoot\DebugLog_$date.txt"
    $teePath = "C:\Program Files (x86)\GnuWin32\bin\tee.exe"
    if (-not (Test-Path $teePath)) {
        [System.Windows.Forms.MessageBox]::Show("tee.exe not found at $teePath")
        return
    }
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c `"$batFile 2>&1 | `"$teePath`" `"$logFile`"`"" -Wait
    [System.Windows.Forms.MessageBox]::Show("Session completed. Log saved to:`n$logFile")
})
$form.Controls.Add($runButton)

$form.ShowDialog()