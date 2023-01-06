Set-ExecutionPolicy Unrestricted -Force
#powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

POWERCFG -restoredefaultschemes
POWERCFG -IMPORT C:\Temp\Core\Scripts\schemeUP.pow 5f740709-a5d2-47a5-92f3-a2f5066a4474
POWERCFG -SETACTIVE 5f740709-a5d2-47a5-92f3-a2f5066a4474
powercfg -setacvalueindex 5f740709-a5d2-47a5-92f3-a2f5066a4474 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg -setdcvalueindex 5f740709-a5d2-47a5-92f3-a2f5066a4474 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
POWERCFG -DELETE 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /L