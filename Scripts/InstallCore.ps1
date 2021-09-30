Write-Progress -Activity 'Enabling Permissions to execute PowerShell Scripts' -PercentComplete (100/10 * 1)
powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"

Start-Transcript -Path "C:\Temp\Core\InstallCoreErrors.txt" -IncludeInvocationHeader

try 
{
#your script

Write-Progress -Activity 'Now configuring your Power Plan' -PercentComplete (100/10 * 1)
powershell.exe -File C:\Temp\Core\Scripts\PowerCFG.ps1

Write-Progress -Activity 'Installing ATERA' -PercentComplete (100/10 * 2)
powershell.exe -File C:\Temp\Core\Scripts\InstallATERA.ps1

Write-Progress -Activity 'Installing AnyDesk' -PercentComplete (100/10 * 2)
powershell.exe -File C:\Temp\Core\Scripts\InstallAnyDesk.ps1

Write-Progress -Activity 'Installing AV ESET' -PercentComplete (100/10 * 3)
powershell.exe -File C:\Temp\Core\Scripts\InstallAVESET.ps1

Write-Progress -Activity 'ADD REG Values' -PercentComplete (100/10 * 4)
powershell.exe -File C:\Temp\Core\Scripts\ADDREGValues.ps1

Write-Progress -Activity 'Disabling UAC' -PercentComplete (100/10 * 4)
powershell.exe -File C:\Temp\Core\Scripts\DisableUAC.ps1

Write-Progress -Activity 'Disabling FeaturesServices' -PercentComplete (100/10 * 5)
powershell.exe -File C:\Temp\Core\Scripts\DisableFeaturesServices.ps1

Write-Progress -Activity 'Disabling BackgroundApplicationsW10' -PercentComplete (100/10 * 5)
powershell.exe -File C:\Temp\Core\Scripts\DisableBackgroundApplications.ps1

Write-Progress -Activity 'Disabling AntiSpyware' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\DisableAntiSpyware.ps1

Write-Progress -Activity 'Removing W11 Built-In Apps... please wait...' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\RemoveW11BuiltInApps.ps1

Write-Progress -Activity 'Enabling PSRemoting' -PercentComplete (100/10 * 8)
powershell.exe -File C:\Temp\Core\Scripts\EnablePSRemoting.ps1

Write-Progress -Activity 'Disabling Network IPv6 all Interfaces' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\DisableNetworkIPv6.ps1

Write-Progress -Activity 'Enabling Network Discovery' -PercentComplete (100/10 * 7)
powershell.exe -File C:\Temp\Core\Scripts\EnableNetworkDiscovery.ps1

Write-Progress -Activity 'Enabling RDP' -PercentComplete (100/10 * 7)
powershell.exe -File C:\Temp\Core\Scripts\EnableRDP.ps1

Write-Progress -Activity 'Installing Microsoft 365' -PercentComplete (100/10 * 8)
powershell.exe -File C:\Temp\Core\Scripts\InstallM365.ps1

Write-Progress -Activity 'Installing Chocolatey' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\InstallChocolatey.ps1

Write-Progress -Activity 'Installing Forticlient VPN' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\InstallVPN.ps1

Write-Progress -Activity 'Restarting PowerShell' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\RestartPowerShell.ps1

Write-Progress -Activity 'Installing Chocolatey Apps Core' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\InstallChocolateyApps.ps1

Write-Progress -Activity 'Installing SupportAssistDELL' -PercentComplete (100/10 * 10)
powershell.exe -File C:\Temp\Core\Scripts\InstallSupportAssistDell.ps1

Write-Progress -Activity 'Installing SupportAssistINTEL' -PercentComplete (100/10 * 10)
powershell.exe -File C:\Temp\Core\Scripts\InstallSupportAssistIntel.ps1

Write-Progress -Activity 'Installing OpenHardware Monitor' -PercentComplete (100/10 * 10)
powershell.exe -File C:\Temp\Core\Scripts\InstallOpenHardwareMonitor.ps1

Write-Progress -Activity 'Installing TeamViewer' -PercentComplete (100/10 * 10)
powershell.exe -File C:\Temp\Core\Scripts\InstallTeamViewer.ps1
}

catch
{
  #perform action or write specific error
  continue;
}

Stop-Transcript
& "C:\Program Files\7-Zip\7zFM.exe"
Get-Content "C:\Temp\Core\InstallCoreErrors.txt" | Out-GridView -PassThru -Title "LOG"

Stop-Process -ProcessName explorer
explorer shell:AppsFolder
appwiz.cpl
devmgmt.msc
systeminfo | Out-File -FilePath C:\Temp\Core\systeminfo.txt

Start-Process ms-windows-store:
explorer ms-windows-store:
explorer ms-appinstaller:?source=https://aka.ms/getwinget
Start-Process iexplore ms-appinstaller:?source=https://aka.ms/getwinget
Start-Process microsoft-edge:https://github-releases.githubusercontent.com/197275130/dd04bc80-d294-11eb-921d-e0f9a5ebe452?X-Amz-Algorithm=AWS4-HMAC-SHA256"&"X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210915%2Fus-east-1%2Fs3%2Faws4_request"&"X-Amz-Date=20210915T135811Z"&"X-Amz-Expires=300"&"X-Amz-Signature=3baa6df7aa8cf546b032987373e13b3e650456b79566441ba5a78f144935c5ac"&"X-Amz-SignedHeaders=host"&"actor_id=0"&"key_id=0"&"repo_id=197275130"&"response-content-disposition=attachment%3B%20filename%3DMicrosoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"&"response-content-type=application%2Foctet-stream


Write-Progress -Activity 'Checking Windows Update' -PercentComplete (100/10 * 10)
powershell.exe -File C:\Temp\Core\Scripts\CheckAndInstallWU.ps1