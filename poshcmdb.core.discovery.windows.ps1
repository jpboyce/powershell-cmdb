
# Core Discovery Windows Functions
#Requires -Version 4


function Get-WindowsProcessor {
    #$session = New-CimSession -ComputerName localhost
    $inst = Get-CimInstance -ComputerName localhost -ClassName Win32_Processor
    $inst

    $processor_Name
    Manufacturer
    AddressWidth            # reflects bits of the installed OS
    Architecture            # 0=x86, 1=MIPS, 2=Alpha, 3=PowerPC, 5=ARM, 6=ia64, 9=x86
    AssetTag                # assset tag, Win10+ only
    Availability            # status, includes power states
    Caption                 # short description
    Characteristics         # Win10+ only
    CpuStatus               # status, more about if the CPU is enabled/disabled
    CurrentClockSpeed       # current speed in MHz
    CurrentVoltage          # current voltage
    DataWidth               # 32 or 64 bit CPU
    Description             # description of the CPU
    DeviceID                # unique CPU, usually CPUx (starting with 0)
    ExtClock                # External clock frequency
    Family                  # CPU family type - 1=Other, 2=Unknown, 3=8086, 4=286, 5=386, 6=486, 7=8087, 8=287, 9=387, 10=487, 11=Pentium, 12=Pentium Pro, 13=Pentium II
                            # 14=Pentium MMX, 15=Celeron, 16=Pentium II Xeon, 17=Pentium III
                            # AMD
                            # 18=M1, 19=M2, 24=K5, 25=K6, 26=K6-2, 27=K6-3, 28=AMD Athlon, 29=AMD Duron, 30=AMD29000, 31=K6-2
                            # PowerPC
                            # 32=Power PC, 33=PowerPC 601, 34=PPC 603, 35=PPC 603+, 36=PPC 604, 37=PPC 620, 38=PPC X704, 39=PPC750, 
                            # Alpha
                            # 48=Alpha, 49=Alpha 21064, 50=21066, 51=21164, 52=21164PC, 53=21164a
    L2CacheSize             # CPU L2 cache size
    L2CacheSpeed            # CPU L2 cache speed
    L3CacheSize             #
    L3CacheSpeed
    Manufacturer
    MaxClockSpeed
    Name
    NumberOfCores           # number of cores, sure this dodesn't work on older OSes
    NumberOfEnabledCore     # number of cores actually enabled, win10+ only
    NumberOfLogicalProcessors   # affected by hyperthreading
    OtherFamilyDescription
    PartNumber              # CPU part number, win10+ only
    PNPDeviceID
    PowerManagementCapabilities # power capabilities, 0=unknown, 1=not supported, 2=disabled, 3=enabled, etc
    PowerManagementSupported
    ProcessorId             # describes CPU features
    ProcessorType           # CPU type, 1=other, 2=unknow, 3=CPU, 4=maths processor, 5=DSP, 6=video processor
    Revision                # Revision level of the CPU
    Role                    # seems to be just a text version of ProcessorType
    SecondLevelAddressTranslationExtensions # whether SLAT is present, win2012+ only
    SerialNumber            # CPU serial, win10+ only.  possibly a unique ID
    SocketDesignation       # type of CPU socket
    Status                  # CPU status
    StatusInfo              # status info
    Stepping                # CPU stepping/revision level
    SystemName              # Name of the computer
    ThreadCount             # num of threats per CPU socket, Win10+ only
    UniqueId                # GUID of the CPU
    UpgradeMethod           # CPU socket upgrade info
    version                 # CPU version info
    VMMonitorModeExtensions # Intel/AMD virtual machine monitor extensions, win2012+ only
    VoltageCaps             # CPU voltage capacty
    


    
}


Get-Windows_CPU
