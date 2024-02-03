#Check ExecutionPolicy

Get-ExecutionPolicy -List

#Install dbatools

Install-Module dbatools

#Import module

Import-Module dbatools

#Installing SQL Server using Powershell

#SQL 2019
Install-DbaInstance -SqlInstance "Computername" -Version 2019 -Path C:\SQL2019 -UpdateSourcePath C:\SQL2019\Updates  -Feature Engine -AuthenticationMode Mixed

#SQL 2022
Install-DbaInstance -SqlInstance "Computername" -Version 2022 -Path C:\SQL2022 -UpdateSourcePath C:\SQL2022\Updates  -Feature Engine -AuthenticationMode Mixed

#For more information refer the dbatools.io docs

https://docs.dbatools.io/
