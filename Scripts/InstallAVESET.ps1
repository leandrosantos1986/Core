powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Main" /v DisableFirstRunCustomize /t REG_DWORD /d 0 /f
New-Item -Type Directory -Path "C:\Temp\Core\Tools\AV\ESET\" -Force
Invoke-WebRequest -Uri "https://download.eset.com/com/eset/apps/business/ees/windows/latest/ees_nt64.msi" -OutFile "C:\Temp\Core\Tools\AV\ESET\ees_nt64.msi"
& "C:\Temp\Core\Tools\AV\ESET\ees_nt64.msi" -q -passive ACCEPT_EULA=1
Start-Sleep 3
Invoke-WebRequest -Uri "https://s3.amazonaws.com/servicedesk.estabilis.com/bei/epi_win_live_installer.exe" -OutFile "C:\Temp\Core\Tools\AV\ESET\epi_win_live_installer.exe"
& "C:\Temp\Core\Tools\AV\ESET\epi_win_live_installer.exe" /s /q