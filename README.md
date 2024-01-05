# Autodesk Setup Automation Script

## Overview

This PowerShell script automates the installation of Autodesk software by checking if the specified process ("autodesk downloader") is running and whether the setup executable file exists. If the conditions are met, the script will run the setup executable in quiet mode (`-q`).

## Prerequisites

- PowerShell: Ensure that PowerShell is installed on your system.
- Administrator Privileges: Run PowerShell with appropriate permissions and from the local machine.

## Instructions

1. **Customize Process Name:**
   - Open the script in a text editor.
   - Locate the line: `$autodeskDownloaderProcess = Get-Process -Name "autodesk downloader" -ErrorAction SilentlyContinue`
   - Replace "autodesk downloader" with the actual name of the process you want to check.

2. **Customize Setup File Path:**
   - Locate the line: `$setupFilePath = "C:\autodesk\setup.exe"`
   - Adjust the file path to match the location of your Autodesk setup executable.

3. **Run the Script:**
   - Save the modified script with a `.ps1` extension (e.g., `InstallAutodesk.ps1`).
   - Open a PowerShell window and navigate to the script's directory.
   - Execute the script using the command: `.\InstallAutodesk.ps1`

4. **Review Output:**
   - The script will provide feedback on whether the specified process is running and if the setup file exists.
   - If conditions are met, it will start the Autodesk setup in quiet mode, waiting for completion.

5. **Note:**
   - Ensure that the script is executed with the necessary permissions for accurate process information retrieval and setup execution.

## Example

```powershell
.\InstallAutodesk.ps1
```

---
