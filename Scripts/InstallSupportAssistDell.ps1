Set-ExecutionPolicy Unrestricted -Force
Write-Progress -Activity 'Installing Dell SupportAssist' -PercentComplete (100/10 * 9)
New-Item -Type directory -path "C:\Temp\Core\Drivers\Dell\" -Force
Invoke-WebRequest 'https://dl.dell.com/serviceability/eSupport/SupportAssistLauncher.exe' -OutFile 'C:\Temp\Core\Drivers\Dell\SupportAssistLauncher.exe'
& 'C:\Temp\Core\Drivers\Dell\SupportAssistLauncher.exe' 
#Start-Sleep 60
Start-Process microsoft-edge:https://www.dell.com/support/home/pt-br/product-support/servicetag
#Start-Process chrome.exe https://www.dell.com/support/home/pt-br/product-support/servicetag