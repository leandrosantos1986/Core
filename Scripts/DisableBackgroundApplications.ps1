Set-ExecutionPolicy Unrestricted -Force
Write-Progress -Activity 'Disabling BackgroundApplications...' -PercentComplete 0
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
Write-Progress -Activity 'Disabling BackgroundApplications...' -PercentComplete (100/10 * 1)