
# VMware Discovery
$arrVcenter = @(
    ("server.name","server.desc","server.abbrev"))
$strVcenter = "server.name"

#region Check for VMware plugin
function Import-Module.VMware {
    $modulecount = (Get-Module -list -name VMware.PowerCLI).count

    if ($modulecount -eq 0){
        # module isn't installed
        Write-Error -Category NotInstalled -Message "[PowerCLI] It appears the VMware PowerCLI software isn't installed on this system.  Exiting script."
        Exit
    }
        else
    {
        Write-Debug "[PowerCLI] Attempting to load the PowerCLI module"
        Import-Module VMware.VimAutomation.Core
    }
}
#endregion

#region Connect to vCenter
Function Connect-vCenter
{
# Connect to the array of vCenter servers in $arrvCenter
param( [string]$VCCredType,[array]$arrvCenter,[string]$VICredFile )

    if ($defaultVIServer) {
        # Connection already exists
    }
    else {
        # No connection, so do it
        $tempVICred = Get-VICredentialStoreItem -File $VICredFile
        Connect-VIServer -Server $arrvCenter -User $tempVICred.User -Password $tempVICred.password -Force 
    }
}

#region Discover Datacenter objects
function Get-VMware.Datacenter {
    # Define fields to get
    get-view -ViewType Datacenter 
}
#endregion

#region Discover Datastore objects
function Get-VMware.Datastore {
    get-view -ViewType Datastore
}

Import-Module.VMware
Connect-vCenter -VCCredType VICred -arrvCenter $strVcenter -VICredFile c:\temp\vCenterCredentials.xml
Get-VMware.Datastore

