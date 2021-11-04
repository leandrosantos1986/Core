@ECHO OFF 
powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
powershell.exe %~dp0%InstallCore.ps1
PAUSE