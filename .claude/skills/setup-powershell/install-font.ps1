# Download and install JetBrainsMono Nerd Font
# Run this script in PowerShell

$tempPath = [System.IO.Path]::GetTempPath()
$zipPath = Join-Path $tempPath 'JetBrainsMono.zip'
$extractPath = Join-Path $tempPath 'JetBrainsMono'

Write-Host "Downloading JetBrainsMono Nerd Font..." -ForegroundColor Cyan
Invoke-WebRequest -Uri 'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip' -OutFile $zipPath

Write-Host "Extracting..." -ForegroundColor Cyan
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

Write-Host "Installing fonts..." -ForegroundColor Cyan
$fonts = Get-ChildItem -Path $extractPath -Filter "*.ttf"
$shell = New-Object -ComObject Shell.Application
$fontsFolder = $shell.Namespace(0x14)  # Fonts folder

foreach ($font in $fonts) {
    Write-Host "  Installing: $($font.Name)"
    $fontsFolder.CopyHere($font.FullName, 0x10)  # 0x10 = overwrite silently
}

Write-Host "Done! Installed $($fonts.Count) font files." -ForegroundColor Green
Write-Host "Restart Windows Terminal to use the new font." -ForegroundColor Yellow

# Cleanup
Remove-Item $zipPath -Force -ErrorAction SilentlyContinue
Remove-Item $extractPath -Recurse -Force -ErrorAction SilentlyContinue
