Start-Transcript -Path "C:\Temp\Core\InstallCoreErrors1.txt" -IncludeInvocationHeader
powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"

function Check-Admin {

param([switch]$Elevated)

$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())

$currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

}

if ((Check-Admin) -eq $false) {

if ($elevated)

{

# could not elevate, quit

}

else {

Start-Process powershell.exe -Verb RunAs -ArgumentList (‘-noprofile -noexit -file “{0}” -elevated’ -f ($myinvocation.MyCommand.Definition))

}

exit

}

Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Microsoft Update Health Tools"} | foreach-object -process {$_.Uninstall()}

#Remove OneDrive
Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Microsoft OneDrive"} | foreach-object -process {$_.Uninstall()}

Write-Progress -Activity 'Now configuring your Power Plan' -PercentComplete (100/10 * 1)
powershell.exe -File C:\Temp\Core\Scripts\PowerCFG.ps1

Write-Progress -Activity 'Installing ATERA' -PercentComplete (100/10 * 2)
powershell.exe -File C:\Temp\Core\Scripts\InstallATERA.ps1

Write-Progress -Activity 'Installing AV ESET' -PercentComplete (100/10 * 3)
powershell.exe -File C:\Temp\Core\Scripts\InstallAVESET.ps1

Write-Progress -Activity 'Installing Forticlient VPN' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\InstallVPN.ps1

Write-Progress -Activity 'Installing AnyDesk' -PercentComplete (100/10 * 2)
powershell.exe -File C:\Temp\Core\Scripts\InstallAnyDesk.ps1

Write-Progress -Activity 'ADD REG Values' -PercentComplete (100/10 * 4)
powershell.exe -File C:\Temp\Core\Scripts\ADDREGValues.ps1

Write-Progress -Activity 'Disabling UAC' -PercentComplete (100/10 * 4)
powershell.exe -File C:\Temp\Core\Scripts\DisableUAC.ps1

Write-Progress -Activity 'Disabling FeaturesServices' -PercentComplete (100/10 * 5)
powershell.exe -File C:\Temp\Core\Scripts\DisableFeaturesServices.ps1

Write-Progress -Activity 'Disabling BackgroundApplicationsW10' -PercentComplete (100/10 * 5)
powershell.exe -File C:\Temp\Core\Scripts\DisableBackgroundApplications.ps1

Write-Progress -Activity 'Disabling AntiSpyware' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\DisableAntiSpyware.ps1

Write-Progress -Activity 'Removing W11 Built-In Apps... please wait...' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\RemoveW11BuiltInApps.ps1

Write-Progress -Activity 'Enabling PSRemoting' -PercentComplete (100/10 * 8)
powershell.exe -File C:\Temp\Core\Scripts\EnablePSRemoting.ps1

Write-Progress -Activity 'Disabling Network IPv6 all Interfaces' -PercentComplete (100/10 * 6)
powershell.exe -File C:\Temp\Core\Scripts\DisableNetworkIPv6.ps1

Write-Progress -Activity 'Enabling Network Discovery' -PercentComplete (100/10 * 7)
powershell.exe -File C:\Temp\Core\Scripts\EnableNetworkDiscovery.ps1

Write-Progress -Activity 'Enabling RDP' -PercentComplete (100/10 * 7)
powershell.exe -File C:\Temp\Core\Scripts\EnableRDP.ps1

Write-Progress -Activity 'Installing Chocolatey' -PercentComplete (100/10 * 9)
powershell.exe -File C:\Temp\Core\Scripts\InstallChocolatey.ps1

Write-Progress -Activity 'Installing Microsoft 365' -PercentComplete (100/10 * 8)
powershell.exe -File C:\Temp\Core\Scripts\InstallM365.ps1
appwiz.cpl

Stop-Transcript

Write-Progress -Activity 'Installing 2nd CoreApps Script, please wait...' -PercentComplete (100/10 * 9)
#powershell.exe -File C:\Temp\Core\Scripts\InstallCore2.ps1
cd C:\Temp\Core\Scripts\
& "$PSScriptRoot.\\InstallCore2.ps1"

