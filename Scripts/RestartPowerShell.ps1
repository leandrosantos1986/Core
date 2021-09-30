function Restart-PowerShell {
    if ($host.Name -eq 'ConsoleHost') {
        exit
    }
    Write-Warning 'Only usable while in the PowerShell console host'
}
Set-Alias -Name 'reload' -Value 'Restart-PowerShell'