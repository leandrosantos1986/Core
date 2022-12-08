Set-ExecutionPolicy Unrestricted -Force
Install-Module PowerShellGet -AllowClobber -Force
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module PSWindowsUpdate -Force 
Add-WUServiceManager -MicrosoftUpdate -Confirm:$False
Get-WindowsUpdate
Install-WindowsUpdate -Confirm:$False -MicrosoftUpdate -AcceptAll

#-Confirm:$False
#-AutoReboot