Set-ExecutionPolicy Unrestricted -Force
#Write-Progress -Activity 'Disabling features of Services...' -PercentComplete 0
#Desativar SysMain:
Write-Progress -Activity 'Disabling SysMain...' -PercentComplete (100/10 * 1)
Set-Service -Name "SysMain" -StartupType Disabled
Stop-Service -Force -Name "SysMain"

#Desativar Experiência Telemetria Usuário:
Write-Progress -Activity 'Disabling DiagTrack...' -PercentComplete (100/10 * 2)
Set-Service -Name "DiagTrack" -StartupType Disabled
Stop-Service -Force -Name "DiagTrack"

#Desativar Backup do Windows:
Write-Progress -Activity 'Disabling SDRSVC...' -PercentComplete (100/10 * 3)
Set-Service -Name "SDRSVC" -StartupType Disabled
Stop-Service -Force -Name "SDRSVC"
Write-Progress -Activity 'Features disable successfully...' -Completed

#Desativar Copia de Sombra de Volume do Windows:
#Write-Progress -Activity 'Disabling VSS...' -PercentComplete (100/10 * 3)
#Set-Service -Name "VSS" -StartupType Disabled
#Stop-Service -Force -Name "VSS"

#Desativar Microsoft Office Click to Run:
#Write-Progress -Activity 'Disabling Microsoft Office Click to Run...' -PercentComplete (100/10 * 3)
#Set-Service -Name "ClickToRunSvc" -StartupType Disabled
#Stop-Service -Force -Name "ClickToRunSvc"