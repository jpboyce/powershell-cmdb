
#Requires -Version 4
#Requires -Modules ActiveDirectory

#region Get current AD forest
function Get-MSADForest {
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

