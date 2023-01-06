Set-ExecutionPolicy Unrestricted -Force
Write-Progress -Activity 'Enabling RDP...' -PercentComplete 0
#Habilitando RDP:

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Get-NetFirewallRule -DisplayName "Remote Desktop*" | Set-NetFirewallRule -enabled true
netsh advfirewall firewall add rule name="allow RemoteDesktop" dir=in protocol=TCP localport=3389 action=allow
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1
Write-Progress -Activity 'RDP enabled successfully...' -PercentComplete (100/10 * 1)
Test-NetConnection localhost -CommonTCPPort rdp