powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
Install-PackageProvider -Name NuGet -Force
Install-Module PSWindowsUpdate -Force 
Add-WUServiceManager -MicrosoftUpdate -Confirm:$False
Get-WindowsUpdate
Install-WindowsUpdate -Confirm:$False -MicrosoftUpdate -AcceptAll

#-Confirm:$False
#-AutoReboot