REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v OneDrive /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v com.squirrel.Teams.Teams /f
#REG DELETE HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v /f
REG DELETE HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /v TeamsMachineUninstallerLocalAppData /f
REG DELETE HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /v TeamsMachineUninstallerProgramData /f