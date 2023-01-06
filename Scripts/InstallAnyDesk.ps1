Set-ExecutionPolicy Unrestricted -Force
#ServicePointManager.SecurityProtocol = SecurityProtocolType.Ssl3 | SecurityProtocolType.Tls | SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11;
Write-Progress -Activity 'Installing AnyDesk (64-bit)' -PercentComplete (100/10 * 9)
New-Item -Type Directory -Path "C:\Temp\Core\Tools\Remote\AnyDesk\" -Force
Invoke-WebRequest 'https://download.anydesk.com/AnyDesk.msi' -OutFile 'C:\Temp\Core\Tools\Remote\AnyDesk\AnyDesk.msi'
& 'C:\Temp\Core\Tools\Remote\AnyDesk\AnyDesk.msi' -q -passive ACCEPT_EULA=1