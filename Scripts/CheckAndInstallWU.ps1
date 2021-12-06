Set-ExecutionPolicy Unrestricted -ForceInstall-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module PSWindowsUpdate -Force 
Add-WUServiceManager -MicrosoftUpdate -Confirm:$False
Get-WindowsUpdate
Install-WindowsUpdate -Confirm:$False -MicrosoftUpdate -AcceptAll

#-Confirm:$False
#-AutoReboot