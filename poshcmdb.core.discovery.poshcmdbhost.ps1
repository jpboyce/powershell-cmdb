# Code for performing initial discovery tasks on the server running poshcmdb

#Requires -Version 4


Function Get-PoshCMDB_Host_DomainCheck {

    $domaincheck = (Get-WmiObject -class win32_computersystem).PartOfDomain
    return $domaincheck
}

Function Get-PoshCMDB_Host_ADDomain {
    $addomain = (Get-WmiObject -Class win32_computersystem).Domain
    return $addomain
}
Function Get-PoshCMDB_Host_Network {
    $network = Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter 'ipenabled = "true"' | select *
    # $network.DNSDomain                    # Should match the domain name
    # $network.DNSDomainSuffixSearchOrder   # Can be a set of pointers to other domains to check
    # $network.DNSServerSearchOrder         # DNS Servers
    # $network.IPAddress                    # Will return all IPs, including IPv6 if enabled, need extra logic to seperate them out
    # $network.DefaultIPGateway             # Default IPv4 gateway, could be used to detect current network range size
    # $network.IPSubnet                     # Returns IPv4 and IPv6 subnets
    # $network.MACAddress                   # MAC Address
    
}

Function Get-PoshCMDB_Host_DNS {
    
}


Get-PoshCMDB_Host_Network
 #Test-ComputerSecureChannel -Verbose