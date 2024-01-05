# Check if "autodesk downloader" process is running or not. You'll have to change this to what ever the process name is.
$autodeskDownloaderProcess = Get-Process -Name "autodesk downloader" -ErrorAction SilentlyContinue

# Check if the file "C:\autodesk\setup.exe" exists
$setupFilePath = "C:\autodesk\setup.exe"
$fileExists = Test-Path $setupFilePath

# If the process is not running and the file exists, run the setup with -q parameter
if (-not $autodeskDownloaderProcess -and $fileExists) {
    Write-Host "Starting Autodesk setup in quiet mode..."
    Start-Process -FilePath $setupFilePath -ArgumentList "-q" -Wait
    Write-Host "Autodesk setup completed."
} else {
    Write-Host "Autodesk Downloader is running or setup file not found."
}
