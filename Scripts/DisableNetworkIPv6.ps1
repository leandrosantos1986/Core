Get-NetAdapter | ForEach-Object { Disable-NetAdapterBinding -InterfaceAlias $_.Name -ComponentID ms_tcpip6 }
Set-NetConnectionProfile -InterfaceAlias * -NetworkCategory Private
Get-NetConnectionProfile