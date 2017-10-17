#Requires -Version 4
#Requires -Modules ActiveDirectory




#region Get SCCM Site objects
function Get-SCCMSites {
    Get-ADObject -Filter 'objectClass -eq "mSSMSSite"' -Properties Name,cn,created,Modified,description,displayname,distinguishedname,instanceType,LastKnownParent,mSSMSAssignmentSiteCode,mSSMSSiteCode,mSSMSSourceForest 
}
#endregion

#region Get SCCM Management Point objects
function Get-SCCMManagementPoints {
    Get-ADObject -Filter 'objectClass -eq "mSSMSManagementPoint"' -Properties CanonicalName, CN, Created, Description, DisplayName, DistinguishedName, dNSHostName, instanceType, LastKnownParent, Modified, mSSMSCapabilities, mSSMSDefaultMP, mSSMSDeviceManagementPoint, mSSMSMPName, mSSMSSiteCode, mSSMSVersion, Name 
}
#endregion



Get-SCCMManagementPoints