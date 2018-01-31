# Database setup
#Requires -Version 4
#Requires -Modules SQLPS



Function Get-Database{
    Param(
        [string]$computerName,

        [string]$databaseName,
        [string]$instanceName
    )
    #$sqlpath = "SQLSERVER:\SQL\"
    #Get-ChildItem -Path SQLSERVER:\SQL\DESKTOP-7BVQA8R\SQLEXPRESS\Databases
    $serverInstance = $computerName+"\"+$instanceName
    #$query = "SELECT name FROM master.dbo.sysdatabases WHERE name = $($databaseName);"
    $query = "SELECT name FROM master.dbo.sysdatabases WHERE name = N'$($databaseName)';"
    $result = Invoke-Sqlcmd -ServerInstance $serverInstance -Query $query -Verbose
    
   $result | Get-Member
}


Get-Database -computerName "localhost" -instanceName "SQLEXPRESS" -databaseName "PoshCMDB"



