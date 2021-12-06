﻿Set-ExecutionPolicy Unrestricted -ForceWrite-Progress -Activity 'Enabling Network Discovery' -PercentComplete (100/10 * 1)
Get-NetFirewallRule -Group '@FirewallAPI.dll,-32752'|Set-NetFirewallRule -Profile 'Private, Domain' -Enabled true -PassThru|Select-Object Name,DisplayName,Enabled,Profile|Format-Table -a
#Get-NetFirewallRule -DisplayGroup 'Descoberta de Rede'|Set-NetFirewallRule -Profile 'Private, Domain' -Enabled true -PassThru|Select-Object Name,DisplayName,Enabled,Profile|Format-Table -a