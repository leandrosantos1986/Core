Set-ExecutionPolicy Unrestricted -Force
Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Teams Machine-Wide Installer"} | foreach-object -process {$_.Uninstall()}

choco install 7zip -y --force
choco install adobereader -y --force
choco install googlechrome -y --force
choco install microsoft-teams -y --force
choco install notepadplusplus -y --force
choco install speedtest -y --force
choco install wget -y --force
choco install zoom -y --force