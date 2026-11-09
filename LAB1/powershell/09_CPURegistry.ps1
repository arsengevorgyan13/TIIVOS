# вывод из системного реестра всей информации
# о центральном процессоре
# (маска * перебирает все подразделы CentralProcessor)
Get-ItemProperty "HKLM:\HARDWARE\DESCRIPTION\System\CentralProcessor\*" |
    Format-List PSChildName, ProcessorNameString, VendorIdentifier, `
                Identifier, FeatureSet, "~MHz"
