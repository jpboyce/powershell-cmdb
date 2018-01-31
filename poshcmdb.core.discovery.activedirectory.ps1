
#Requires -Version 4
#Requires -Modules ActiveDirectory

#region Get current AD forest
function Get-MSADForest {
    Param(
        [string[]]
        $forestName

        [string[]]
        $credentials

        [ValidateSet("Standalone","DomainJoined")]
        [string[]]
        $mode = "Standalone"

        [string[]]
        $server
    )


    if($mode -eq "Standalone"){
        # If the system is standalone, then we have to connect with explicit details, like domain controller, credentials, etc.
        $firstForest = Get-ADForest -Credential $credentials -Identity $forestName -Server $server
    }
    else{
        # If the system is domain joined, then we can just use credentials and use the local domain
    }
    $currentforest = Get-ADForest -Current LocalComputer

    <#
    # Attributes of note
    Name
    ForestMode
Domains
RootDomain
Sites
SchemaMaster
DomainNamingMaster
GlobalCatalogs
    #>
}
#endregion

#region Get Domain trusts
function Get-MSADTrusts {
    Get-ADObject -Filter 'objectClass -eq "trustedDomain"' 
}
#endregion

Get-ADForest -Server