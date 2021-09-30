powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
Write-Progress -Activity 'Enabling PSRemoting...' -PercentComplete 0
#Habilitar PS Remoto, necessário que a interface de rede esteja como privada
Set-NetConnectionProfile -InterfaceAlias * -NetworkCategory Private
Enable-PSRemoting -Force
Write-Progress -Activity 'PSRemoting enabled successfully...' -PercentComplete (100/10 * 1)

Get-NetConnectionProfile