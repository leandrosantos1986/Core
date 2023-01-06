Set-ExecutionPolicy Unrestricted -Force
Write-Progress -Activity 'Disabling AntiSpyware...' -PercentComplete 0
REG ADD "hklm\software\policies\microsoft\windows defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
Write-Progress -Activity 'Disabling AntiSpyware...' -PercentComplete (100/10 * 1)