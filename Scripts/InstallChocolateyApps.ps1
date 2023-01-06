Set-ExecutionPolicy Unrestricted -Force
Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Teams Machine-Wide Installer"} | foreach-object -process {$_.Uninstall()}

choco install 7zip -y --force
choco install adobereader -y --force
choco install googlechrome -y --force
#choco install microsoft-teams -y --force
Write-Progress -Activity 'Getting Microsoft Teams' -PercentComplete (100/10 * 1)
New-Item -Type Directory -Path "C:\Temp\Core\Programs\Microsoft Office\" -Force
[system.Diagnostics.Process]::Start("chrome.exe","https://statics.teams.cdn.office.net/production-windows/1.5.00.11163/TeamsSetup.exe")
Copy-Item "$env:userprofile\Downloads\TeamsSetup.exe" "C:\Temp\Core\Programs\Microsoft Office\"
choco install notepadplusplus -y --force
choco install speedtest -y --force
choco install wget -y --force
choco install zoom -y --force