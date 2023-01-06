Set-ExecutionPolicy Unrestricted -Force
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Internet Explorer\Main\' -Name 'DisableFirstRunCustomize' -Value '0'
New-Item -Type Directory -Path "C:\Temp\Core\Tools\AV\ESET\" -Force
Invoke-WebRequest -Uri "https://download.eset.com/com/eset/apps/business/ees/windows/latest/ees_nt64.msi" -OutFile "C:\Temp\Core\Tools\AV\ESET\ees_nt64.msi"
& "C:\Temp\Core\Tools\AV\ESET\ees_nt64.msi" -q -passive ACCEPT_EULA=1
Start-Sleep 3

#New-Item -Type Directory -Path "C:\Temp\Core\Tools\AV\ESET\" -Force
#Invoke-WebRequest -Uri "https://liveinstaller.eset.systems/odc/a1d255e0-71dc-45cd-8c4a-72e8ce84cc19/epi_win_live_installer.exe" -OutFile "C:\Temp\Core\Tools\AV\ESET\epi_win_live_installer.exe"
#& "C:\Temp\Core\Tools\AV\ESET\epi_win_live_installer.exe" /s /q