@ECHO OFF 
powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
powershell.exe %~dp0%InstallCore1.ps1
PAUSE