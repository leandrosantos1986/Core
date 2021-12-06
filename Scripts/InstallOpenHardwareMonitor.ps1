Set-ExecutionPolicy Unrestricted -ForceWrite-Progress -Activity 'Getting OpenHardwareMonitor' -PercentComplete (100/10 * 1)
New-Item -Type directory -path "C:\Temp\Core\Tools\openhardwaremonitor\" -Force
Invoke-WebRequest 'https://openhardwaremonitor.org/files/openhardwaremonitor-v0.9.6.zip' -OutFile 'C:\Temp\Core\Tools\openhardwaremonitor\openhardwaremonitor-v0.9.6.zip'
Expand-Archive -LiteralPath 'C:\Temp\Core\Tools\openhardwaremonitor\openhardwaremonitor-v0.9.6.zip' -DestinationPath C:\Temp\Core\Tools\openhardwaremonitor\
XCOPY /S /E "C:\Temp\Core\Tools\openhardwaremonitor\OpenHardwareMonitor\*.*" /Y "C:\Program Files\OpenHardwareMonitor\"
Write-Progress -Activity 'Importing Firewall Rules...' -PercentComplete (100/10 * 1)
powershell.exe -File "C:\Temp\Core\Scripts\InstallOpenHardwareMonitorFWRules.ps1" C:\Temp\Core\Scripts\InstallOpenHardwareMonitor.json -JSON

#Abrindo programa:
& "C:\Program Files\OpenHardwareMonitor\OpenHardwareMonitor.exe"

Start-Process microsoft-edge:http://localhost:8085/

#https://openhardwaremonitor.org/
#https://github.com/openhardwaremonitor/openhardwaremonitor.git