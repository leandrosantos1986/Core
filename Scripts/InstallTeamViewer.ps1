Set-ExecutionPolicy Unrestricted -Force
Write-Progress -Activity 'Getting TeamViewer' -PercentComplete (100/10 * 1)
New-Item -Type Directory -Path "C:\Temp\Core\Tools\Remote\TeamViewer\" -Force
Invoke-WebRequest -Uri "https://download.teamviewer.com/download/TeamViewer_Setup.exe" -OutFile 'C:\Temp\Core\Tools\Remote\TeamViewer\TeamViewer_Setup.exe'
Start-Process "C:\Temp\Core\Tools\Remote\TeamViewer\TeamViewer_Setup.exe"