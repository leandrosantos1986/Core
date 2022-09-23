Set-ExecutionPolicy Unrestricted -Force
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Internet Explorer\Main\' -Name 'DisableFirstRunCustomize' -Value '0'
New-Item -Type Directory -Path "C:\Temp\Core\Programs\VPN\Forticlient" -Force
Invoke-WebRequest -Uri "https://s3.amazonaws.com/servicedesk.estabilis.com/Softwares/FortiClientVPN.msi" -OutFile "C:\Temp\Core\Programs\VPN\Forticlient\FortiClientVPN.msi"
& 'C:\Temp\Core\Programs\VPN\Forticlient\FortiClientVPN.msi' -q -passive ACCEPT_EULA=1