Set-ExecutionPolicy Unrestricted -Force
REG ADD "hklm\software\microsoft\internet explorer\main" /v DisableFirstRunCustomize /t REG_DWORD /d 0 /f
New-Item -Type Directory -Path "C:\Temp\Core\Programs\VPN\Forticlient" -Force
Invoke-WebRequest -Uri "https://s3.amazonaws.com/servicedesk.estabilis.com/bei/FortiClientVPN.msi" -OutFile "C:\Temp\Core\Programs\VPN\Forticlient\FortiClientVPN.msi"
& 'C:\Temp\Core\Programs\VPN\Forticlient\FortiClientVPN.msi' -q -passive ACCEPT_EULA=1