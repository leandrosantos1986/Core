powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
Write-Progress -Activity 'Installing AnyDesk (64-bit)' -PercentComplete (100/10 * 9)
New-Item -Type directory -path "C:\Temp\Core\Tools\Remote\AnyDesk\" -Force
Invoke-WebRequest 'https://download.anydesk.com/AnyDesk.msi' -OutFile 'C:\Temp\Core\Tools\Remote\AnyDesk\AnyDesk.msi'
& 'C:\Temp\Core\Tools\Remote\AnyDesk\AnyDesk.msi' -q -passive ACCEPT_EULA=1