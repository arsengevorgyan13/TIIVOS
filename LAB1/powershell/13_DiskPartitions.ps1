# вывод информации о разделах жёсткого диска
Get-WmiObject Win32_DiskPartition |
    Format-Table Name, Type, BootPartition, PrimaryPartition, `
                  NumberOfBlocks, Size -AutoSize
Get-WmiObject Win32_LogicalDiskToPartition |
    ForEach-Object {
        "{0}  ->  {1}" -f $_.Antecedent.ToString(), $_.Dependent.ToString()
    }
