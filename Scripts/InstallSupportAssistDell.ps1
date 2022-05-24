Set-ExecutionPolicy Unrestricted -Force
[system.Diagnostics.Process]::Start("iexplore","https://dl.dell.com/serviceability/eSupport/SupportAssistLauncher.exe")
New-Item -Type directory -path "C:\Temp\Core\Drivers\Dell\" -Force
Start-Sleep 15
Copy-Item "$env:userprofile\Downloads\SupportAssistLauncher.exe" "C:\Temp\Core\Drivers\Dell\"
& 'C:\Temp\Core\Drivers\Dell\SupportAssistLauncher.exe'
Write-Progress -Activity 'Installing Dell SupportAssist' -PercentComplete (100/10 * 9)

#For DELL Latitude 3470:
[system.Diagnostics.Process]::Start("iexplore","https://dl.dell.com/FOLDER04239943M/3/Dell-WLAN-Radio-Switch-Driver_JK9WM_WIN_1.0.0.9_A05.EXE")
New-Item -Type directory -path "C:\Temp\Core\Drivers\Dell\Latitude 3470\" -Force
Start-Sleep 30
Copy-Item "$env:userprofile\Downloads\Dell-WLAN-Radio-Switch-Driver_JK9WM_WIN_1.0.0.9_A05.EXE" "C:\Temp\Core\Drivers\Dell\Latitude 3470\"
& 'C:\Temp\Core\Drivers\Dell\Latitude 3470\Dell-WLAN-Radio-Switch-Driver_JK9WM_WIN_1.0.0.9_A05.EXE'

Start-Process microsoft-edge:https://www.dell.com/support/home/pt-br/product-support/servicetag
#Start-Process chrome.exe https://www.dell.com/support/home/pt-br/product-support/servicetag