Set-ExecutionPolicy Unrestricted -Force
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Internet Explorer\Main\' -Name 'DisableFirstRunCustomize' -Value '0'

New-Item -Type Directory -Path "C:\Temp\Core\Tools\Remote\ATERA\" -Force
Invoke-WebRequest -Uri "https://HelpdeskSupport996109550.servicedesk.atera.com/GetAgent/Msi/?customerId=18&integratorLogin=servicedesk%40estabilis.com" -OutFile "C:\Temp\Core\Tools\Remote\ATERA\Unassigned.msi"
#Or Invoke-WebRequest -Uri "https://app.atera.com/breeze/GenericTicketing/GetAgentSetupMSI?customerId=18&integratorLogin=servicedesk@estabilis.com&customerName=Unassigned&accountId=0013z00002fLXqoAAG" -OutFile "C:\Temp\Core\Tools\Remote\ATERA\Unassigned.msi"

& 'C:\Temp\Core\Tools\Remote\ATERA\Unassigned.msi'