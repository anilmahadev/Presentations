

#Check ExecutionPolicy

Get-ExecutionPolicy -List

#Install dbatools

Install-Module dbatools

#Import module

Import-Module dbatools

#Get DBAtools version

Get-InstalledModule dbatools

#Installing SQL Server using Powershell

#Restart the target node if needed

Restart-Computer SQL1 -Force

#Replace SQL1 with your Computer Name
#SQL 2017
Install-DbaInstance -SqlInstance "SQL1" -Version 2017 -Path C:\SQL2017 -UpdateSourcePath C:\SQL2017\Updates  -Feature Engine -AuthenticationMode Mixed -Confirm:$false

#Set TCP Port

Set-DbaTcpPort -SqlInstance SQL1 -Port 1433 -Confirm:$false

#Insecure Cert -Not recommended for Production as this is only a Demo


Set-DbatoolsInsecureConnection -SessionOnly


#Restore Database

Restore-DbaDatabase -SqlInstance SQL1 -Path C:\SQL2017\Backups -Confirm:$false

#Remove all User Databases from Instance

Get-DbaDatabase -SqlInstance SQL1 | Remove-DbaDatabase -Confirm:$false

Write-Host "Thank for coming and attending this session!! This was super fun"

#SQL 2022
#Install-DbaInstance -SqlInstance "Computername" -Version 2022 -Path C:\SQL2022 -UpdateSourcePath C:\SQL2022\Updates  -Feature Engine -AuthenticationMode Mixed

#For more information refer the dbatools.io docs

#https://docs.dbatools.io/
