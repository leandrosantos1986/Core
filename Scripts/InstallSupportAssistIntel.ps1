Set-ExecutionPolicy Unrestricted -ForceWrite-Progress -Activity 'Installing Intel Support Drivers' -PercentComplete (100/10 * 9)
New-Item -Type directory -path "C:\Temp\Core\Drivers\Intel\" -Force
Invoke-WebRequest 'https://dsadata.intel.com/installer' -OutFile 'C:\Temp\Core\Drivers\Intel\Intel-Driver-and-Support-Assistant-Installer.exe'
& 'C:\Temp\Core\Drivers\Intel\Intel-Driver-and-Support-Assistant-Installer.exe' /q /doNotRequireDRMPrompt -Force
#Start-Sleep 60
Start-Process microsoft-edge:https://www.intel.com.br/content/www/br/pt/support/detect.html
#Start-Process chrome.exe https://www.intel.com.br/content/www/br/pt/support/detect.html