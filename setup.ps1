# Setup script
#Requires -Version 4

# Includes
#. .\poshcmdb.core.discovery.activedirectory.ps1
. .\poshcmdb.core.discovery.poshcmdbhost.ps1
#. .\poshcmdb.core.discovery.sccm.ps1
#. .\poshcmdb.core.discovery.vmware.ps1
#. .\poshcmdb.core.discovery.windows.ps1


# Do domain member check
if (Get-PoshCMDB_Host_DomainCheck -eq $True) {
    # computer is on a domain, so domain related tasks can be done

}
else {
    # computer is stand alone, so we will do best guess and ask for confirmation for domain related items
}