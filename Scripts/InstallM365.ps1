powershell.exe -Command "& {Set-ExecutionPolicy -scope Currentuser -executionPolicy Unrestricted}"
Write-Progress -Activity 'Getting Microsoft 365' -PercentComplete (100/10 * 1)
New-Item -Type Directory -Path "C:\Temp\Core\Programs\Microsoft Office\" -Force
Set-Location "C:\Temp\Core\Programs\Microsoft Office\"
curl -o OfficeSetup.exe "https://c2rsetup.officeapps.live.com/c2r/download.aspx?productReleaseID=O365BusinessRetail&platform=Def&language=pt-br&TaxRegion=pr&correlationId=517e1f25-5a1c-4cfe-864b-c368c3948b8f&token=0bd091c7-883f-484c-847a-9bb49773fb32&version=O16GA&source=O15OLSO365&Br=2"
& "C:\Temp\Core\Programs\Microsoft Office\OfficeSetup.exe"