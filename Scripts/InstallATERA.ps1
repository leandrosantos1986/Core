powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
REG ADD "hklm\software\microsoft\internet explorer\main" /v DisableFirstRunCustomize /t REG_DWORD /d 0 /f
New-Item -Type Directory -Path "C:\Temp\Core\Tools\Remote\ATERA\" -Force
Invoke-WebRequest -Uri "https://app2.atera.com/GetAgent/Msi/?customerId=2&integratorLogin=servicedesk%40estabilis.com&customerName=BEI" -OutFile "C:\Temp\Core\Tools\Remote\ATERA\AteraBEI.msi"
& 'C:\Temp\Core\Tools\Remote\ATERA\AteraBEI.msi'